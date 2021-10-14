from django.template import Library
from utils import  utilsProduto

register = Library()


@register.filter
def formata_preco(val):
    return utilsProduto.formata_preco(val)
