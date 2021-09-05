from django.urls import path

from django.conf import settings
from . import views
from django.conf.urls.static import static

app_name = 'produtos'

urlpatterns = [
    path("", views.ListaPrdutos.as_view(), name='lista'),
    path("<slug>", views.DetelheProduto.as_view(), name='detalhe'),
    path("adicionaraocarrinho/", views.AdicionarAoCarrinho.as_view(), name='adicionaraocarrinho'),
    path("removerdocarrinho/", views.RemoverDoCarrinho.as_view(), name='removerdocarrinho'),
    path("carrinho/", views.Carrinho.as_view(), name='carrinho'),
    path("finalizar/", views.Finalizar.as_view(), name='finalizar'),
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
