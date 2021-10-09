from django.db import models
from django.contrib.auth.models import User
from cliente.models import Cliente
from produtos.models import Produto
from cupom.models import Cupom

class FormaDePagamento(models.Model):
    forma_de_pagamento = models.CharField(unique=True, max_length=30)

    def __str__(self):
        return self.forma_de_pagamento

    class Meta:
        verbose_name = 'Forma de Pagamento'
        verbose_name_plural = 'Formas de Pagamentos'


class Status(models.Model):
    status = models.CharField(unique=True, max_length=50)

    def __str__(self):
        return self.status

    class Meta:
        verbose_name = 'Status'
        verbose_name_plural = 'Status'


'''class Transportadora(models.Model):
    nome_transportadora = models.CharField(unique=True, max_length=50)
    telefone = models.CharField(max_length=11)

    def __str__(self):
        return self.nome_transportadora

    class Meta:
        verbose_name = 'Transportadora'
        verbose_name_plural = 'Transportadoras'

'''

class Pedido(models.Model):
    cliente = models.ForeignKey(Cliente, on_delete=models.DO_NOTHING)
    total = models.FloatField()
    status = models.ForeignKey(Status, models.DO_NOTHING)
    forma_pagamento = models.ForeignKey(FormaDePagamento, models.DO_NOTHING)
    data = models.DateTimeField()
    subtotal = models.FloatField()
    desconto = models.FloatField()
    cupom = models.ForeignKey(Cupom, on_delete=models.DO_NOTHING, blank=True)
    total = models.FloatField()
    frete = models.FloatField()
    codigo_rastreio = models.CharField(unique=True, max_length=50, blank=True, null=True)
    notal_fiscal = models.CharField(max_length=70, blank=True, null=True)

    def __str__(self):
        return f'Pedido N. {self.pk}'

    class Meta:
        verbose_name = 'Pedido'
        verbose_name_plural = 'Pedidos'


class ItemPedido(models.Model):
    pedido = models.ForeignKey(Pedido, on_delete=models.CASCADE)
    produto = models.ForeignKey(Produto, on_delete=models.CASCADE)
    preco = models.FloatField()
    preco_promocional = models.FloatField(default=0)
    quantidade = models.PositiveIntegerField()
    imagem = models.CharField(max_length=250)

    def __str__(self):
        return f'Item do {self.pedido}'

    class Meta:
        verbose_name = 'Item do pedido'
        verbose_name_plural = 'Itens do pedido'

# Create your models here.
