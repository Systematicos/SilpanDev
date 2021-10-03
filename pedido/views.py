import json
import urllib.parse

from django.shortcuts import render
from django.views.generic.list import ListView
from django.views import View
from django.http import HttpResponse

from pedido.forms import ProdutoForm
from produtos.models import Categoria


class Pagar(View):
    def get(self, *args, **kwargs):
        return HttpResponse('Pagar')


class FecharPedido(View):
    template_name = 'checkout.html'

    def get_context_data(self, **kwargs):
        context = super(FecharPedido, self).get_context_data()
        return context

    def post(self, request, *args, **kwargs):
        formUser = request.COOKIES['dados']
        formUser = urllib.parse.unquote(formUser)
        formUser = json.loads(formUser)
        print(formUser)
        context = {}
        context['d'] = request.POST.get('PPminicarts')
        context['categorias'] = Categoria.objects.all().order_by('nome')
        tes = request.POST
        return render(request, 'checkout.html', context)


class Detalhe(View):
    pass
