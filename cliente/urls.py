from django.urls import path
from . import views

app_name = 'cliente'

urlpatterns = [
    path("", views.criar, name='criar'),
    path("atualizar", views.Atualizar.as_view(), name='atualizar'),
    path("login", views.Login.as_view(), name='login'),
    path("logout", views.Logout.as_view(), name='logout'),

]