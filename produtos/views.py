import math

from django.shortcuts import render
from django.views.generic.list import ListView
from django.views import View
from django.http import HttpResponse
from .models import Produto, Categoria


class ListaPrdutos(ListView):
    context_object_name = 'produtos'

    template_name = 'produto/product.html'
    queryset = Produto.objects.all()

    def get_context_data(self, **kwargs):
        produtos = Produto.getListProdutInColun()
        context = super(ListaPrdutos, self).get_context_data(**kwargs)
        context['produtos'] = produtos
        context['qtd_product'] = len(produtos)
        context['categorias'] = Categoria.objects.all()

        return context


class DetelheProduto(View):
    pass


class AdicionarAoCarrinho(View):
    pass


class RemoverDoCarrinho(View):
    pass


class Carrinho(View):
    pass


class Finalizar(View):
    pass
