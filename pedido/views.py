import json
import urllib.parse

from django.shortcuts import render
from django.views.generic.list import ListView
from django.views import View
from django.http import HttpResponse, JsonResponse

from cliente.models import Cliente
from cupom.models import Cupom
from pedido.forms import ProdutoForm
from pedido.models import Pedido, FormaDePagamento, Status, ItemPedido
from produtos.models import Categoria, Produto


class Pagar(View):
    def post(self, request, *args, **kwargs):
        requestJson = json.loads(request.body.decode('utf-8'))

        cliente = Cliente.objects.get(cpf=Cliente.popular_cliente(requestJson, None).cpf)
        formaDePagamento = FormaDePagamento.objects.get(id=requestJson['forma_pagamento'])
        status_pedido = Status.objects.get(id=1)
        pedido = Pedido.criarPedido(cliente, formaDePagamento, status=status_pedido)
        itens = ItemPedido.criarListItensPedido(pedido=pedido, reqJson=requestJson['cart'])

        print(requestJson)

        Pedido.save(pedido)

        for item in itens:
            ItemPedido.save(item)

        return JsonResponse({})


class FecharPedido(View):
    template_name = 'checkout.html'

    def get_context_data(self, **kwargs):
        context = super(FecharPedido, self).get_context_data()
        return context

    def post(self, request, *args, **kwargs):
        context = {}
        context['categorias'] = Categoria.objects.all().order_by('nome')
        context['Forma_pagamentos'] = FormaDePagamento.objects.all().order_by('forma_de_pagamento')
        return render(request, 'checkout.html', context)


class Detalhe(View):
    pass
