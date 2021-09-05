from django.contrib import admin
from .models import Produto, Variacao, Marca, Categoria


class VariacaoInLine(admin.TabularInline):
    model = Variacao
    extra = 1


class ProdutoAdmin(admin.ModelAdmin):
    list_display = ['nome', 'descricao_curta', 'get_preco_formatado', 'get_preco_promocional_formatado']
    inlines = [
        VariacaoInLine
    ]


class MarcaAdmin(admin.ModelAdmin):
    list_display = ['marca']


class CategoriaAdmin(admin.ModelAdmin):
    list_display = ['nome']


admin.site.register(Produto, ProdutoAdmin)
admin.site.register(Variacao)
admin.site.register(Marca, MarcaAdmin)
admin.site.register(Categoria, CategoriaAdmin)
