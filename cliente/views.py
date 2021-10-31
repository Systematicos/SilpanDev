import json

from django.contrib.auth import authenticate, login, logout
from django.http import HttpResponse, JsonResponse
from django.shortcuts import render, redirect
from django.views import View
from rest_framework.renderers import JSONRenderer

import cliente
from . import forms
from .Serializers import EnderecoSerializer
from .forms import ClienteForm, UserForm
from .models import Cliente, Endereco
from django.contrib.auth.models import User


class Atualizar(View):
    pass


def criar(request):
    if request.method == 'POST':
        formUser = UserForm(request.POST)
        formCliente = ClienteForm(request.POST)

        usuario = Cliente.popular_usuario(formUser.usuario)
        cliente = Cliente.popular_cliente(formCliente.cliente, usuario)

        usuario.save()
        cliente.save()
        return redirect('../produto')


def Login(request):
    if request.method == 'POST':
        username = request.POST.get('user')
        password = request.POST.get('password')

        if not username or not password:
            return HttpResponse('digtar usuario ou senha')

        usuario = authenticate(request, username=username, password=password)
        login(request, user=usuario)

        if not usuario:
            return HttpResponse('nao tem usuario')
        return redirect('produtos:lista')


def Logout(request):
    if request.method == 'GET':
        logout(request)

        return redirect('produtos:carrinho')


from django.core import serializers


def buscarByCPF(request):
    print()
    if request.method == 'POST':
        try:
            cliente = Cliente.objects.get(cpf=json.loads(request.body.decode('utf-8'))['cpf'])
            endereco = Endereco.objects.all().filter(cliente_id=cliente.pk)
            enderecos = []
            for end in endereco:
                enderecoSerializ = EnderecoSerializer(end)
                enderecos.append(enderecoSerializ.data)


            enderecos = json.dumps(enderecos)
            cliente = serializers.serialize("json", [cliente, ])
            return JsonResponse({
                'Cliente': cliente,
                'Endereco': enderecos
            }, safe=False)
        except Exception as inst:
            print(type(inst))
            print(inst.args)
            print(inst)

            return JsonResponse({}, status=404)
