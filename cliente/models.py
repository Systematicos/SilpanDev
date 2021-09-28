from django.db import models
from django.contrib.auth.models import User
from django.forms import ValidationError
import re
from utils import validacpf


class Cliente(models.Model):
    usuario = models.OneToOneField(User, on_delete=models.CASCADE)
    data_nascimento = models.DateField()
    cpf = models.CharField(max_length=11)

    def clean(self):
        messagens_erros = {}

        if not validacpf.valida_cpf(self.cpf):
            messagens_erros['cpf'] = 'Digite um CPF válido'

        if re.search(r'[^0-9]', self.cep) or len(self.cep) < 8:
            messagens_erros['cep'] = 'CEP Inválido, digite os 8 digitos do CEP.'

        if messagens_erros:
            raise ValidationError(messagens_erros)

    @classmethod
    def popular_usuario(cls, form):
        usuario = User()
        usuario.username = form['Username']
        usuario.set_password(form['Password'])
        usuario.email = form['Email']
        usuario.is_active = True

        return usuario

    @classmethod
    def popular_cliente(cls, form, user):
        cliente = Cliente()

        cliente.usuario = user
        cliente.cpf = form['CPF']
        cliente.data_nascimento = form['Dt_nasc']

        return cliente

    def __str__(self):
        return f'{self.usuario}'

    class Meta:
        verbose_name = 'Cliente'
        verbose_name_plural = 'Clientes'


class Endereco(models.Model):
    tipo = models.CharField(max_length=30)
    numero = models.CharField(max_length=6)
    complemento = models.CharField(max_length=50, blank=True, null=True)
    cep = models.CharField(max_length=50)
    cliente = models.ForeignKey(Cliente, on_delete=models.CASCADE)

    class Meta:
        verbose_name = 'Endereço'
        verbose_name_plural = 'Endereços'
