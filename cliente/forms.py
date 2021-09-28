from django import forms
from django.contrib.auth.models import User
from . import models


class ClienteForm(forms.ModelForm):
    def __init__(self, cliente=None, *args, **kwargs):
        super().__init__(*args, **kwargs)

        self.cliente = cliente
    class Meta:
        model = models.Cliente
        fields = '__all__'
        exec = ('Usuario')

class UserForm(forms.ModelForm):
    password = forms.CharField(
        required=False,
        widget=forms.PasswordInput(),
        label='Senha',
    )

    password2 = forms.CharField(
        required=False,
        widget=forms.PasswordInput(),
        label='Confirmação senha'
    )

    def __init__(self, usuario=None, *args, **kwargs):
        super().__init__(*args, **kwargs)

        self.usuario = usuario

    class Meta:
        model = User
        fields = ('first_name', 'last_name', 'username', 'password',
                  'password2', 'email')

    def clean(self, *args, **kwargs):
        data = self.data
        cleaned = self.cleaned_data