import json
import urllib.parse

from django.shortcuts import render
from django.views.generic.list import ListView
from django.views import View
from django.http import HttpResponse, JsonResponse

from pedido.forms import ProdutoForm
from produtos.models import Categoria, Produto


class Pagar(View):
    def post(self, request, *args, **kwargs):
        print(json.loads(request.body.decode('utf-8')))
        return JsonResponse({})


class FecharPedido(View):
    template_name = 'checkout.html'

    def get_context_data(self, **kwargs):
        context = super(FecharPedido, self).get_context_data()
        return context

    def post(self, request, *args, **kwargs):
        dados = request.COOKIES['dados']
        dados = urllib.parse.unquote(dados)

        # list_product = Produto.convert_json_Produto(dados)
        context = {}
        context['d'] = request.POST.get('PPminicarts')
        context['categorias'] = Categoria.objects.all().order_by('nome')
        tes = request.POST
        return render(request, 'checkout.html', context)


class Detalhe(View):
    pass
