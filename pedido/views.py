import json

from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User
from django.shortcuts import render, redirect
from django.urls import reverse
from django.utils.decorators import method_decorator
from django.views import View

from cliente.models import Cliente, Endereco
from pedido.models import Pedido, FormaDePagamento, Status, ItemPedido
from produtos.models import Categoria
from pycep_correios import get_address_from_cep, WebService


class Pagar(View):
    @method_decorator(login_required(login_url='home'))
    def post(self, request, *args, **kwargs):
        requestJson = json.loads(request.body.decode('utf-8'))
        if not eval(requestJson['cadastro']):

            cliente = Cliente.objects.get(cpf=requestJson['cpf'])
            endereco = Endereco.objects.get(cliente=cliente, tipo=requestJson['endereco'])
        else:
            cliente = Cliente.popular_cliente(requestJson)
            Cliente.save(cliente)
            endereco = Endereco.populaEndereco(requestJson, cliente)
            Endereco.save(endereco)

        formaDePagamento = FormaDePagamento.objects.get(id=requestJson['forma_pagamento'])
        status_pedido = Status.objects.get(id=1)
        vendedor = User.objects.get(id=15)
        pedido = Pedido.criarPedido(cliente=cliente, formaDePagamento=formaDePagamento, vendedor=vendedor,
                                    endereco=endereco, status=status_pedido)
        itens = ItemPedido.criarListItensPedido(pedido=pedido, reqJson=requestJson['cart'])

        pedido.subtotal, pedido.total, pedido.desconto = Pedido.calcularCaixa(itens)
        Pedido.save(pedido)

        Pedido.baixaEstoque(itens)
        for item in itens:
            ItemPedido.save(item)

        url = reverse('pedido:resumo', kwargs={'id': pedido.id})

        return redirect(url)


class FecharPedido(View):
    global template_name

    def get_context_data(self, **kwargs):
        context = super(FecharPedido, self).get_context_data()
        return context

    @method_decorator(login_required(login_url='home'))
    def post(self, request, *args, **kwargs):
        template_name = 'checkout.html'
        context = {}
        context['categorias'] = Categoria.objects.all().order_by('nome')
        return render(request, template_name, context)


class selecionarClienteEndereco(View):
    global template_name

    def get_context_data(self, **kwargs):
        context = super(selecionarClienteEndereco, self).get_context_data()
        return context

    @method_decorator(login_required(login_url='home'))
    def post(self, request, *args, **kwargs):
        template_name = 'finalizarPedido.html'
        context = {}
        context['categorias'] = Categoria.objects.all().order_by('nome')
        context['Forma_pagamentos'] = FormaDePagamento.objects.all().order_by('forma_de_pagamento')
        return render(request, template_name, context)


class resumo(View):
    global template_name

    @method_decorator(login_required(login_url='home'))
    def get(self, request, *args, **kwargs):
        template_name = 'createPedido.html'
        pedido_id = kwargs.get('id')

        pedido = Pedido.objects.get(id=pedido_id)
        itens = ItemPedido.getItensPedido(pedido_id=pedido.id)

        endereco = get_address_from_cep(pedido.endereco_entrega.cep, webservice=WebService.VIACEP)
        endereco['numero'] = pedido.endereco_entrega.numero
        context = {}
        context['categorias'] = Categoria.objects.all().order_by('nome')
        context['items'] = itens
        context['pedido'] = pedido
        context['endereco'] = endereco

        return render(request, template_name, context)


class Detalhe(View):
    pass
