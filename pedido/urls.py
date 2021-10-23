from django.urls import path
from . import views

app_name = 'pedido'

urlpatterns = [

    path('', views.Pagar.as_view(), name='pagar'),
    path('lista', views.Pagar.as_view(), name='lista'),
    path('selecionar', views.selecionarClienteEndereco.as_view(), name='selecionarClienteEndereco'),
    path('fecharpedido', views.FecharPedido.as_view(), name='fecharpedido'),
    path('detalhe', views.Detalhe.as_view(), name='detalhe'),

]
