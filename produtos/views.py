import math

from django.contrib.auth.decorators import login_required
from django.contrib.auth.mixins import LoginRequiredMixin
from django.shortcuts import render, get_object_or_404
from django.utils.decorators import method_decorator
from django.views.generic.list import ListView
from django.views.generic.detail import DetailView
from django.views import View
from django.http import HttpResponse
from .models import Produto, Categoria
from . import models


class ListaProdutos(LoginRequiredMixin, ListView):
    context_object_name = 'produtos'

    def get_context_data(self, **kwargs):
        produtos = Produto.getListProdutInColun()
        context = super(ListaProdutos, self).get_context_data(**kwargs)
        context['produtos'] = produtos
        context['qtd_product'] = len(produtos)
        context['categorias'] = Categoria.objects.all().order_by('nome')

        return context

    def get(self, request, *args, **kwargs):
        context = super(ListaProdutos, self).get_context_data(**kwargs)
        if request.user.is_authenticated:
            render(request=request, template_name='produto/product.html',context=context)


class ListaProdutosCategoria(ListView):
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


class DetalheProduto(DetailView):
    model = models.Produto
    context_object_name = 'detalhe'
    template_name = 'produto/detalhe.html'

    def get_object(self):
        self.produto = get_object_or_404(Produto, slug=self.kwargs['slug'])
        return self.produto

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['categorias'] = Categoria.objects.all().order_by('nome')

        return context
