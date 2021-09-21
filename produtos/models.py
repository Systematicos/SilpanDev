from django.db import models

# Create your models here.
from django.db import models
from PIL import Image
import os
from django.conf import settings
from django.utils.text import slugify
from django_resized import ResizedImageField

from utils import utilsProduto


class Categoria(models.Model):
    nome = models.CharField(max_length=30)

    def __str__(self):
        return self.nome

    class Meta:
        verbose_name = 'Categoria'
        verbose_name_plural = 'Categorias'

    def getNomeCategoria(self):
        if self.nome.find(' '):
            nome = []
            indexes = [x for x, v in enumerate(self.nome) if v == ' ']
            x = 0
            for y in indexes:

                nome.append(str(self.nome[x:y]).strip())
                x = y
            nome.append(self.nome[x:].strip())
        else:
            return self.nome

class Marca(models.Model):
    nome = models.CharField(max_length=40, blank=True, null=True)

    def __str__(self):
        return self.nome

    class Meta:
        verbose_name = 'Marca'
        verbose_name_plural = 'Marcas'


class Produto(models.Model):
    nome = models.CharField(max_length=250)
    descricao = models.TextField(max_length=250, null=True, blank=True)
    quantidade = models.IntegerField(default=1)
    imagem = ResizedImageField(size=[212, 212], upload_to='produto_imagens/%Y/%m/', blank=True)
    marca = models.ForeignKey(Marca, on_delete=models.DO_NOTHING)
    categoria = models.ForeignKey(Categoria, on_delete=models.DO_NOTHING)
    preco_marketing = models.FloatField()
    preco_marketing_promocional = models.FloatField(default=0, blank=True, null=True)
    cor = models.CharField(max_length=50, blank=True, null=True)
    material = models.CharField(max_length=50, blank=True, null=True)
    largura = models.IntegerField(blank=True, null=True)
    altura = models.IntegerField(blank=True, null=True)
    comprimento = models.IntegerField(blank=True, null=True)

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


