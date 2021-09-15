from datetime import datetime

from django.db import models


class Cupom(models.Model):
    nome = models.CharField(max_length=20, null=False)
    valor = models.FloatField(blank=True, default=0)
    percentual = models.PositiveIntegerField(blank=True, default=0)
    data_inicio = models.DateTimeField(blank=True, default=datetime.now)
    data_final = models.DateTimeField(blank=True, null=True)
    quantidade = models.PositiveIntegerField(default=1, blank=True)
    STATUS_CHOICES = (
        ("ATIVADO", "1"),
        ("DESATIVADO", "0")
    )

    status = models.CharField(max_length=10,
                              choices=STATUS_CHOICES,
                              default="ATIVADO")

    def __str__(self):
        return self.nome

    class Meta:
        verbose_name = 'Cupom'
        verbose_name_plural = 'Cupons'
