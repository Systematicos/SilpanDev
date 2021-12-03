from django.urls import path
from . import views

app_name = 'cliente'

urlpatterns = [
    path("buscar", views.buscarByCPF, name='buscarByCpf'),

]