from django.urls import path
from . import views

app_name = 'cliente'

urlpatterns = [
    path("", views.criar, name='criar'),
    path("logout", views.Logout, name='logout'),
    path("login", views.Login, name='login'),
    path("buscar", views.buscarByCPF, name='buscarByCpf'),

]