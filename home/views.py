from django.contrib import auth
from django.contrib.auth import authenticate, logout
from django.contrib.auth.decorators import login_required
from django.core.cache import cache
from django.http import HttpResponse
from django.shortcuts import render, redirect

# Create your views here.
from django.utils import http
from django.utils.decorators import method_decorator
from django.views import View

from produtos.models import Categoria, Produto


@login_required(login_url='login')
def home(request):
    if request.method == 'GET' and request.GET.get('nome'):
        template_name = 'produto/produto.html'

        context = {}
        context['pesquisa_produto'] = request.GET.get('nome')
        context['produtos'] = Produto.getListProdutInColun(nome_produto=context['pesquisa_produto'])
        context['qtd_product'] = len(context['produtos']) if context['produtos'] != None else 0
        context['categorias'] = Categoria.objects.all().order_by('nome')
        return render(request=request, template_name=template_name, context=context)

    else:
        template_name = 'home/home.html'
        produtos = Produto.getListProdutInColun()

        context = {}
        context['produtos'] = produtos

        context['categorias'] = Categoria.objects.all().order_by('nome')

        return render(request=request, template_name=template_name, context=context)


def login(request):
    if request.method == 'GET':
        template_name = 'home/login.html'

        return render(request=request, template_name=template_name)

    elif request.method == 'POST':
        username = request.POST.get('user')
        password = request.POST.get('password')

        if not username or not password:
            return HttpResponse('digtar usuario ou senha')

        usuario = authenticate(request, username=username, password=password)

        if not usuario:
            return HttpResponse({
                'error': 'nao tem usuario'
            }, status=404)

        auth.login(request, user=usuario)

        return redirect('home')


def Logout(request):
    if request.method == 'GET':
        auth.logout(request)

        return redirect('home')


