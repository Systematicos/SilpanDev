from django.db import models

# Create your models here.
from django.db import models
from PIL import Image
import os
from django.conf import settings
from django.utils.text import slugify


class Categoria(models.Model):
    nome = models.CharField(max_length=30)

    def __str__(self):
        return self.nome

    class Meta:
        verbose_name = 'Categoria'
        verbose_name_plural = 'Categorias'


class Marca(models.Model):
    marca = models.CharField(max_length=40, blank=True, null=True)

    def __str__(self):
        return self.marca

    class Meta:
        verbose_name = 'Marca'
        verbose_name_plural = 'Marcas'


class Produto(models.Model):
    nome = models.CharField(max_length=250)
    descricao_curta = models.TextField(max_length=50, null=True, blank=True)
    descricao_longa = models.TextField(max_length=250, null=True, blank=True)
    quantidade = models.IntegerField(default=1)
    imagem = models.ImageField(upload_to='produto_imagens/%Y/%m/', blank=True)
    marca = models.ForeignKey(Marca, on_delete=models.DO_NOTHING)
    categoria = models.ForeignKey(Categoria, on_delete=models.DO_NOTHING)
    preco_marketing = models.FloatField()
    preco_marketing_promocional = models.FloatField(default=0)
    tipos = models.CharField(
        default='V',
        max_length=1,
        choices=(('V', 'Variação'), ('S', 'Simples'))

    )
    largura = models.IntegerField(blank=True, null=True)
    altura = models.IntegerField(blank=True, null=True)
    comprimento = models.IntegerField(blank=True, null=True)

    def get_preco_formatado(self):
        return f'R$ {self.preco_marketing:.2f}'.replace('.', ',')

    get_preco_formatado.short_description = 'Preço'

    def get_preco_promocional_formatado(self):
        return f'R$ {self.preco_marketing_promocional:.2f}'.replace('.', ',')

    get_preco_promocional_formatado.short_description = 'Preço Promocional'

    @staticmethod
    def resize_image(img, new_width=800):
        img_full_path = os.path.join(settings.MEDIA_ROOT, img.name)
        img_pil = Image.open((img_full_path))
        original_width, original_height = img_pil.size

        if original_width <= new_width:
            img_pil.close()
            return

        new_height = round((new_width * original_height) / original_width)
        new_img = img_pil.resize((new_width, new_height), Image.LANCZOS)
        new_img.save(
            img_full_path,
            optimize=True,
            quality=75
        )

        print(original_width, original_height)

    def save(self, *args, **kwargs):

        super().save(*args, **kwargs)
        max_image_size = 200

        if self.imagem:
            self.resize_image(self.imagem, max_image_size)

    def __str__(self):
        return self.nome


class Variacao(models.Model):
    cod_varicao = models.AutoField(primary_key=True)

    produto = models.ForeignKey(Produto, on_delete=models.CASCADE)
    nome = models.CharField(max_length=50, null=True, blank=True)
    preco = models.FloatField()
    preco_promocional = models.FloatField(blank=True, null=True, default=0)
    quantidade = models.PositiveIntegerField(default=1)
    cor = models.CharField(max_length=50, blank=True, null=True)
    material = models.CharField(max_length=50)

    def __str__(self):
        return self.nome or self.produto.nome

    class Meta:
        verbose_name = 'Variável'
        verbose_name_plural = 'Variações'
