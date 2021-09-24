import math

from django.shortcuts import render, get_object_or_404
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
        context['categorias'] = Categoria.objects.all().order_by('nome')

        return context


class ListaPrdutosCategoria(ListView):
    context_object_name = 'produtos'

    template_name = 'produto/produto.html'
    def get_queryset(self):
        self.categoria = get_object_or_404(Categoria, nome=self.kwargs['categoria'])

        return Produto.objects.filter(categoria=self.categoria)

    def get_context_data(self, **kwargs):
        produtos = Produto.getListProdutInColun()

        context = super().get_context_data(**kwargs)
        context['categoria'] = self.categoria
        context['produtos'] = Produto.getListProdutInColun(Produto.objects.all().filter(categoria=self.categoria))
        context['qtd_product'] = len(context['produtos'])
        context['categorias'] = Categoria.objects.all().order_by('nome')

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
