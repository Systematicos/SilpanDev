from django.urls import path
from . import views

app_name = 'cliente'

urlpatterns = [
    path("", views.criar, name='criar'),
    path("atualizar", views.Atualizar.as_view(), name='atualizar'),
    path("logout", views.Logout, name='logout'),
    path("login", views.Login, name='login'),
    path("buscar", views.buscarByCPF, name='buscarByCpf'),
    path("buscarenderecos", views.buscarEndereco, name='buscarEnderecos'),

]