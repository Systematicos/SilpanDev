from django.http import HttpResponse
from django.shortcuts import render, redirect
from django.views import View

import cliente
from . import forms
from .forms import ClienteForm, UserForm
from .models import Cliente
from django.contrib.auth.models import User


class BasePerfil(View):
    template_name = 'cliente/criar.html'

    def setup(self, *args, **kwargs):
        super().setup(*args, **kwargs)

        self.context = {
            'userform': forms.UserForm(data=self.request.POST or None),
            'clientForm': forms.ClientForm(data=self.request.POST or None),

        }
        self.renderizar = render(self.request, self.template_name, self.context)

    def get(self, *args, **kwargs):
        return self.renderizar


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