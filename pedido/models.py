from datetime import datetime

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


class Transportadora(models.Model):
    nome_transportadora = models.CharField(unique=True, max_length=50)
    telefone = models.CharField(max_length=11)

    def __str__(self):
        return self.nome_transportadora

    class Meta:
        verbose_name = 'Transportadora'
        verbose_name_plural = 'Transportadoras'




class Pedido(models.Model):
    cliente = models.ForeignKey(Cliente, on_delete=models.DO_NOTHING )
    total = models.FloatField()
    status = models.ForeignKey(Status, models.DO_NOTHING)
    forma_pagamento = models.ForeignKey(FormaDePagamento, models.DO_NOTHING )
    data = models.DateTimeField()
    subtotal = models.FloatField()
    desconto = models.FloatField(default=0.0)
    cupom = models.ForeignKey(Cupom, on_delete=models.DO_NOTHING, null=True)
    total = models.FloatField()
    transportadora = models.ForeignKey(Transportadora, null=True, on_delete=models.DO_NOTHING )
    frete = models.FloatField(null=True)
    codigo_rastreio = models.CharField(unique=True, max_length=50, blank=True, null=True)
    notal_fiscal = models.CharField(max_length=70, blank=True, null=True)

    def __str__(self):
        return f'Pedido N. {self.pk}'

    @classmethod
    def criarPedido(cls, cliente, formaDePagamento, status):
        pedido = Pedido()
        pedido.data = datetime.today()
        pedido.frete = 0.0
        pedido.status = status
        pedido.cliente = cliente
        pedido.forma_pagamento = formaDePagamento

        pedido.subtotal = 100
        pedido.total = 90
        pedido.desconto = 10
        #pedido.cupom = cupom

        return pedido

    class Meta:
        verbose_name = 'Pedido'
        verbose_name_plural = 'Pedidos'


class ItemPedido(models.Model):
    pedido = models.ForeignKey(Pedido, on_delete=models.DO_NOTHING)
    produto = models.ForeignKey(Produto, on_delete=models.DO_NOTHING)
    preco = models.FloatField()
    preco_promocional = models.FloatField(default=0)
    quantidade = models.PositiveIntegerField()
    imagem = models.CharField(max_length=250)
    def __str__(self):
        return f'Item do {self.pedido}'

    @classmethod
    def criarItemPedido(cls, pedido, produto, preco, cor, material, largura, altura, comprimento, imagem,
                        preco_promocional=0, quantidade=1):
        item = ItemPedido()
        item.pedido = pedido
        item.produto = produto
        item.preco = preco
        item.preco_promocional = preco_promocional
        item.quantidade = quantidade
        item.imagem = imagem
        return item

    @classmethod
    def criarListItensPedido(cls, pedido, reqJson):
        itens = []
        for item in reqJson:
            produto = Produto.objects.get(id=item['id'])
            itens.append(
                ItemPedido.criarItemPedido(pedido, produto, item['amount'], item['cor'], item['material'],
                                           item['largura'], item['altura'], item['comprimento'], imagem=item['href'],
                                           quantidade=item['quantity']))

        return itens

    @classmethod
    def getItensPedido(cls):
        pass

    class Meta:
        verbose_name = 'Item do pedido'
        verbose_name_plural = 'Itens do pedido'
