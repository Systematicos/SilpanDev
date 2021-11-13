def formata_preco(val):
    return f'{val:.2f}'.replace('.', ',')


def formata_numero_pedido(val):
    return f'{str(val).zfill(6)}'
