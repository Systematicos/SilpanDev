from django.contrib import admin
from .models import Produto, Marca, Categoria


class ProdutoAdmin(admin.ModelAdmin):
    list_display = ['nome', 'descricao', 'get_preco_formatado', 'get_preco_promocional_formatado']
    prepopulated_fields = {'slug': ('nome',)}

class MarcaAdmin(admin.ModelAdmin):
    list_display = ['nome']


class CategoriaAdmin(admin.ModelAdmin):
    list_display = ['nome']


admin.site.register(Produto, ProdutoAdmin)
admin.site.register(Marca, MarcaAdmin)
admin.site.register(Categoria, CategoriaAdmin)
