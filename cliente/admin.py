from django.contrib import admin
from .models import Cliente, Endereco


class EnderecoInLine(admin.TabularInline):
    model = Endereco
    extra = 2


class ClienteAdmin(admin.ModelAdmin):
    inlines = [
        EnderecoInLine
    ]


admin.site.register(Cliente, ClienteAdmin)
admin.site.register(Endereco)
