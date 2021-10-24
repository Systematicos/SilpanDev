from django.shortcuts import render

# Create your views here.
from produtos.models import Categoria


def home(requets):
    context = {}
    context['categorias'] = Categoria.objects.all().order_by('nome')

    return render(requets, 'home/home.html', context= context)


