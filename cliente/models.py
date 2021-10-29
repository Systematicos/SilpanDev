from datetime import datetime

from django.db import models
from django.contrib.auth.models import User
from django.forms import ValidationError
import re
from utils import validacpf


class Cliente(models.Model):
    email = models.CharField(max_length=255, unique=True)
    nome = models.CharField(max_length=50)
    sobrenome = models.CharField(max_length=100)
    data_nascimento = models.DateField()
    cpf = models.CharField(max_length=11, unique=True)
    telefone = models.CharField(max_length=11)

    def clean(self):
        messagens_erros = {}

        # if not validacpf.valida_cpf(self.cpf):
        # messagens_erros['cpf'] = 'Digite um CPF válido'

        if messagens_erros:
            raise ValidationError(messagens_erros)

    import re

    @classmethod
    def popular_cliente(cls, form, cadastro=False):
        cliente = Cliente()
        if cadastro:
            try:
                cliente.nome = form['nome']

                cliente.data_nascimento = form['Dt_nasc']
                cliente.email = form['email']
                cliente.telefone = form['numero_telefone']
            except KeyError:
                cliente.nome = form['nome']
                cliente.email = form['email']
                cliente.telefone = form['numero_telefone']
                cliente.data_nascimento = datetime.today()

        cliente.cpf = form['cpf']

        return cliente

    def __str__(self):
        return self.nome

    class Meta:
        verbose_name = 'Cliente'
        verbose_name_plural = 'Clientes'


class Endereco(models.Model):
    tipo = models.CharField(max_length=30)
    numero = models.CharField(max_length=6)
    complemento = models.CharField(max_length=50, blank=True, null=True)
    cep = models.CharField(max_length=50)
    cliente = models.ForeignKey(Cliente, on_delete=models.CASCADE)

    def __str__(self):
        return f' Tipo: {self.tipo}, do cliente {self.cliente.nome}{self.cliente.sobrenome}'

    @classmethod
    def populaEndereco(cls, form, cliente):
        endereco = Endereco()

        endereco.tipo = form['tipo_endereco']
        endereco.numero = form['numero_casa']
        endereco.complemento = form['complemento']
        endereco.cep = form['cep']
        endereco.cliente = cliente

        return endereco
    class Meta:
        verbose_name = 'Endereço'
        verbose_name_plural = 'Endereços'
