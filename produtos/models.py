import json

from django.db import models

# Create your models here.
from django.db import models
from PIL import Image
import os
from django.conf import settings
from django.utils.text import slugify
from django_resized import ResizedImageField
from autoslug import AutoSlugField
from django.urls import reverse
from stdimage import StdImageField

from utils import utilsProduto


class AvailableManager(models.Manager):
    def get_queryset(self):
        return super().get_queryset().filter(is_available=True)


class Categoria(models.Model):
    nome = models.CharField(max_length=30)

    def __str__(self):
        return self.nome

    class Meta:
        verbose_name = 'Categoria'
        verbose_name_plural = 'Categorias'

    def getNomeCategoria(self):
        nome_categoria = self.nome.split()
        nome = []

        for n in nome_categoria:
            nome.append({n[0]: n[1:]})
        return nome


class Produto(models.Model):
    slug = AutoSlugField(unique=True, always_update=False, populate_from="nome")
    nome = models.CharField(max_length=250)
    descricao = models.TextField(max_length=250, null=True, blank=True)
    quantidade = models.IntegerField(default=1)
    imagem = StdImageField(upload_to='produto_imagens/%Y/%m/',
                           variations={'full': {'width': 500, 'height': 500},
                                       'medium': {'width': 212, 'height': 212},
                                       'thumbnail': {'width': 50, 'height': 50}})
    categoria = models.ForeignKey(Categoria, on_delete=models.DO_NOTHING, null=True)
    preco_marketing = models.FloatField()
    preco_marketing_promocional = models.FloatField(default=0, blank=True, null=True)
    cor = models.CharField(max_length=50, blank=True, null=True)
    material = models.CharField(max_length=50, blank=True, null=True)
    largura = models.IntegerField(blank=True, null=True)
    altura = models.IntegerField(blank=True, null=True)
    comprimento = models.IntegerField(blank=True, null=True)

    def get_absolute_url(self):
        return reverse("produtos:detalhe", kwargs={"slug": self.slug})

    def get_preco_formatado(self):
        return utilsProduto.formata_preco(self.preco_marketing)

    get_preco_formatado.short_description = 'Preço'

    def get_preco_promocional_formatado(self):
        return utilsProduto.formata_preco(self.preco_marketing_promocional)

    get_preco_promocional_formatado.short_description = 'Preço Promocional'

    def __str__(self):
        return self.nome

    def getDesconto(self):
        if self.preco_marketing_promocional:
            return self.preco_marketing - self.preco_marketing_promocional

    @classmethod
    def split(cls, lista, tamanho):
        return [lista[i:i + tamanho] for i in range(0, len(lista), tamanho)]

    @classmethod
    def getListProdutInColun(cls, listProduct=[]):
        lista = []
        if not listProduct:
            listProduct = Produto.objects.all()

        for produto in listProduct:
            lista.append(produto)

        return Produto.split(lista, 3)

    @classmethod
    def convert_json_Produto(cls, json_data):
        list_product = []
        json_data = json.loads(json_data)
        for product in json_data['value']['items']:
            produto = Produto()
            produto.nome = product['item_name']
            produto.descricao = product['descricao']
            produto.quantidade = product['quantidade']
            produto.imagem = product['imagem']
            produto.categoria = product['categoria']
            produto.preco_marketing = product['amount']
            produto.preco_marketing_promocional = product['discount_amount']
            produto.cor = product['cor']
            produto.material = product['material']
            produto.largura = product['largura']
            produto.altura = product['altura']
            produto.comprimento = product['comprimento']

            list_product.append(produto)
        return list_product



