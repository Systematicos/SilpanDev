import debug_toolbar
from django.urls import path, include

from django.conf import settings
from . import views
from django.conf.urls.static import static
from .models import Categoria
app_name = 'produtos'


urlpatterns = [

    path("", views.ListaProdutos.as_view(), name='lista'),
    path("<categoria>", views.ListaProdutosCategoria.as_view(), name='listaCategoria'),
    path("<slug:slug>/", views.DetalheProduto.as_view(), name='detalhe')

] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)

