from django.urls import path
from . import views
from django.contrib.auth.decorators import login_required


app_name = 'pedido'

urlpatterns = [

    path('', views.Pagar.as_view(), name='pagar'),
    path('resumo/<id>', views.resumo.as_view(), name='resumo'),
    path('lista', views.Lista.as_view(), name='lista'),
    path('selecionar', views.selecionarClienteEndereco.as_view(), name='selecionarClienteEndereco'),
    path('fecharpedido', views.FecharPedido.as_view(), name='fecharpedido'),
    path('detalhe', views.Detalhe.as_view(), name='detalhe'),

]
