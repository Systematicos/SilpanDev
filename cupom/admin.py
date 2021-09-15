from django.contrib import admin
from .models import Cupom


class CupomAdmin(admin.ModelAdmin):
    inlines = []


admin.site.register(Cupom, CupomAdmin)
