import json
import urllib.parse

from django.contrib.auth.models import User
from django.shortcuts import render
from django.views.generic.list import ListView
from django.views import View
from django.http import HttpResponse, JsonResponse

from cliente.models import Cliente, Endereco
from cupom.models import Cupom
from pedido.forms import ProdutoForm
from pedido.models import Pedido, FormaDePagamento, Status, ItemPedido
from produtos.models import Categoria, Produto


class Pagar(View):
    def post(self, request, *args, **kwargs):
        requestJson = json.loads(request.body.decode('utf-8'))
        try:
            cliente = Cliente.objects.get(cpf=Cliente.popular_cliente(requestJson).cpf)
        except Cliente.DoesNotExist:
            cliente = Cliente.popular_cliente(requestJson, cadastro=True)
            Cliente.save(cliente)

        try:
            endereco = Endereco.populaEndereco(requestJson, cliente)
            endereco = Endereco.objects.get(cliente=cliente, tipo=endereco.tipo)
        except Endereco.DoesNotExist:
            Endereco.save(endereco)

        formaDePagamento = FormaDePagamento.objects.get(id=requestJson['forma_pagamento'])
        status_pedido = Status.objects.get(id=1)
        vendedor = User.objects.get(id=15)
        pedido = Pedido.criarPedido(cliente=cliente, formaDePagamento=formaDePagamento, vendedor=vendedor,
                                    endereco=endereco, status=status_pedido)
        itens = ItemPedido.criarListItensPedido(pedido=pedido, reqJson=requestJson['cart'])

        print(requestJson)
        Pedido.save(pedido)

        for item in itens:
            ItemPedido.save(item)

        return JsonResponse({})


class FecharPedido(View):
    global template_name

    def get_context_data(self, **kwargs):
        context = super(FecharPedido, self).get_context_data()
        return context

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

    def post(self, request, *args, **kwargs):
        template_name = 'finalizarPedido.html'
        context = {}
        context['categorias'] = Categoria.objects.all().order_by('nome')
        context['Forma_pagamentos'] = FormaDePagamento.objects.all().order_by('forma_de_pagamento')
        return render(request, template_name, context)


class Detalhe(View):
    pass
