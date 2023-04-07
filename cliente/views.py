import json

from django.contrib.auth.decorators import login_required
from django.core import serializers
from django.http import JsonResponse

from .Serializers import EnderecoSerializer
from .models import Cliente, Endereco


def buscarByCPF(request):
    print()
    if request.method == 'POST':
        try:
            cliente = Cliente.objects.get(cpf=json.loads(request.body.decode('utf-8'))['cpf'])
            endereco = Endereco.objects.all().filter(cliente_id=cliente.pk)
            enderecos = []
            for end in endereco:
                enderecoSerializ = EnderecoSerializer(end)
                enderecos.append(enderecoSerializ.data)


            enderecos = json.dumps(enderecos)
            cliente = serializers.serialize("json", [cliente, ])
            return JsonResponse({
                'Cliente': cliente,
                'Endereco': enderecos
            }, safe=False)
        except Exception as inst:
            print(type(inst))
            print(inst.args)
            print(inst)

            return JsonResponse({}, status=404)
