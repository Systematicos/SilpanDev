from rest_framework import serializers

from cliente.models import Endereco


class EnderecoSerializer(serializers.Serializer):
    tipo = serializers.CharField()
    numero = serializers.CharField()
    complemento = serializers.CharField()
    cep = serializers.CharField()

    class Meta:
        model = Endereco
