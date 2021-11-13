from django.shortcuts import render

# Create your views here.
from produtos.models import Categoria, Produto


def home(requets):
    template_name = 'home/home.html'
    produtos = Produto.getListProdutInColun()

    context = {}
    context['produtos'] = produtos

    context['categorias'] = Categoria.objects.all().order_by('nome')

    return render(request=requets, template_name=template_name, context=context)
