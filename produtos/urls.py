import debug_toolbar
from django.contrib.auth.decorators import login_required
from django.urls import path, include

from django.conf import settings
from . import views
from django.conf.urls.static import static
from .models import Categoria

app_name = 'produtos'

urlpatterns = [

                  path("<categoria>", login_required(views.ListaProdutosCategoria.as_view(), login_url='login'),
                       name='listaCategoria'),
                  path("buscar/<nome>", login_required(views.ListaProduto.as_view(), login_url='login'),
                       name='listaNome'),

                  path("<slug:slug>/", login_required(views.DetalheProduto.as_view(), login_url='login'),
                       name='detalhe')

              ] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
