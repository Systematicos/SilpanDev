import json

from django.contrib import messages
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User
from django.db import transaction, IntegrityError
from django.http import HttpResponse
from django.shortcuts import render, redirect, get_object_or_404
from django.urls import reverse
from django.utils.decorators import method_decorator
from django.views import View
from django.views.generic.list import ListView

import pedido
from cliente.models import Cliente, Endereco
from pedido.models import Pedido, FormaDePagamento, ItemPedido
from produtos.models import Categoria, Produto
from pycep_correios import get_address_from_cep, WebService

from utils.enviar_email import sending


class Pagar(View):
    @method_decorator(login_required(login_url='home'))
    def post(self, request, *args, **kwargs):

        requestJson = json.loads(request.body.decode('utf-8'))
        if (requestJson['forma_pagamento'] != "0"):

            estoqueProduto = Produto.verificarEstoque(produtos=requestJson['cart'])
            if not estoqueProduto:
                if not eval(requestJson['cadastro']):

                    cliente = Cliente.objects.get(cpf=requestJson['cpf'])
                    endereco = Endereco.objects.get(cliente=cliente, tipo=requestJson['endereco'])
                    return self.realizarPedido(cliente, endereco, requestJson)
                else:
                    cliente = Cliente.popular_cliente(requestJson)
                    erros = Cliente.validacao(cliente)
                    if erros:
                        for e in erros:
                            messages.add_message(request, messages.WARNING, e)
                    else:
                        try:
                            with transaction.atomic():
                                Cliente.save(cliente)
                                endereco = Endereco.populaEndereco(requestJson, cliente)
                                erros = Endereco.validacao(endereco)
                                if erros:
                                    for e in erros:
                                        messages.add_message(request, messages.WARNING, e)
                                        raise IntegrityError
                                else:
                                    Endereco.save(endereco)
                                    return self.realizarPedido(cliente, endereco, requestJson)
                        except IntegrityError:
                            print(e)

            else:
                for estoprod in estoqueProduto:
                    if estoqueProduto[estoprod]["quantidade_estoque"] == 0:
                        messages.add_message(request, messages.WARNING,
                                             f'Produto {estoprod} está fora do estoque ')
                    else:
                        messages.add_message(request, messages.WARNING,
                                             f'Produto {estoprod} tem somente {estoqueProduto[estoprod]["quantidade_estoque"]} ')

        else:
            messages.add_message(request, messages.ERROR, "Selecione uma metodo de pagamento")

    def realizarPedido(self, cliente, endereco, requestJson):
        formaDePagamento = FormaDePagamento.objects.get(id=requestJson['forma_pagamento'])
        vendedor = self.request.user
        pedido = Pedido.criarPedido(cliente=cliente, formaDePagamento=formaDePagamento, vendedor=vendedor,
                                    endereco=endereco)
        itens = ItemPedido.criarListItensPedido(pedido=pedido, reqJson=requestJson['cart'])
        pedido.subtotal, pedido.total, pedido.desconto = Pedido.calcularCaixa(itens)
        Pedido.save(pedido)
        Pedido.baixaEstoque(itens)
        for item in itens:
            ItemPedido.save(item)
        url = reverse('pedido:resumo', kwargs={'id': pedido.id})
        endereco = Endereco.getEndereco(pedido)
        sending(pedido, itens, endereco)
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
        context['Forma_pagamentos'] = FormaDePagamento.objects.all().order_by('forma_de_pagamento')

        return render(request, template_name, context)


class selecionarClienteEndereco(View):
    global template_name

    def get_context_data(self, **kwargs):
        context = super(selecionarClienteEndereco, self).get_context_data()
        return context

    @method_decorator(login_required(login_url='home'))
    def get(self, request, *args, **kwargs):
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

        endereco = Endereco.getEndereco(pedido)
        context = {}
        context['categorias'] = Categoria.objects.all().order_by('nome')
        context['items'] = itens
        context['pedido'] = pedido
        context['endereco'] = endereco
        return render(request, template_name, context)


class Detalhe(View):
    pass


class Lista(ListView):
    context_object_name = 'pedidos'
    template_name = 'listapedidos.html'

    def get_queryset(self):
        return Pedido.objects.all().filter(vendedor=self.request.user)

    def get_context_data(self, **kwargs):
        context = super(Lista, self).get_context_data(**kwargs)
        user = User.objects.all().get(id= self.request.user.id)
        pedidos = Pedido.getPedidoByUser(user)

        context['vendedor'] = user
        context['pedidos'] = pedidos
        context['categorias'] = Categoria.objects.all().order_by('nome')

        return context
