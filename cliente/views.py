from django.http import HttpResponse
from django.shortcuts import render, redirect
from django.views import View

import cliente
from . import forms
from .forms import ClienteForm, UserForm
from .models import Cliente
from django.contrib.auth.models import User

class Atualizar(View):
    pass

class Login(View):
    pass


class Logout(View):
    pass

def criar(request):
    if request.method == 'POST':
        formUser = UserForm(request.POST)
        formCliente= ClienteForm(request.POST)

        usuario = Cliente.popular_usuario(formUser.usuario)
        cliente = Cliente.popular_cliente(formCliente.cliente,usuario)

        usuario.save()
        cliente.save()
        return redirect('../produto')




def popular_endereco(form):
    pass