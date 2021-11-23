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


class ListaProdutosCategoria(ListView):
    template_name = 'produto/produto.html'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        if self.kwargs['categoria'] != None:
            context['categoria'] = Categoria.objects.get(nome=self.kwargs['categoria'])
            context['produtos'] = Produto.getListProdutInColun(categoria=context['categoria'])


        else:
            self.nome_produto = self.kwargs['nome']
            context['produtos'] = Produto.getListProdutInColun(nome_produto=self.nome_produto)

        context['qtd_product'] = len(context['produtos']) if context['produtos'] != None else 0
        context['categorias'] = Categoria.objects.all().order_by('nome')

        return context

class ListaProduto(ListView):
    template_name = 'produto/produto.html'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        if self.kwargs['categoria'] != None:
            context['categoria'] = Categoria.objects.get(nome=self.kwargs['categoria'])
            context['produtos'] = Produto.getListProdutInColun(categoria=context['categoria'])


        else:
            self.nome_produto = self.kwargs['nome']
            context['produtos'] = Produto.getListProdutInColun(nome_produto=self.nome_produto)

        context['qtd_product'] = len(context['produtos']) if context['produtos'] != None else 0
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
