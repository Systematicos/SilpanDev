from django.contrib import admin
from .models import Produto, Categoria


class ProdutoAdmin(admin.ModelAdmin):
    list_display = ['nome', 'slug', 'descricao', 'get_preco_formatado', 'get_preco_promocional_formatado']


class MarcaAdmin(admin.ModelAdmin):
    list_display = ['nome']


class CategoriaAdmin(admin.ModelAdmin):
    list_display = ['nome']


admin.site.register(Produto, ProdutoAdmin)
admin.site.register(Categoria, CategoriaAdmin)
