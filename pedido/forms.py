from django import forms
from django.contrib.auth.models import User
from . import models


class ProdutoForm(forms.ModelForm):
    def __init__(self, produto=None, *args, **kwargs):
        super().__init__(*args, **kwargs)

        self.produto = produto
    class Meta:
        model = models.Produto
        fields = '__all__'
