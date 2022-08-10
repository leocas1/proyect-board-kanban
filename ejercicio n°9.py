historial5 = (8520, 9510, 7530, 3570, 1590)

def ValorMaximo(tupla):
    maximo = 0
    for valor in tupla:
        if valor > maximo:
            maximo = valor
    print(maximo)

ValorMaximo(historial5)

# O tambien puede ser #

def ValorMaximo2(tupla):
    maximo = max(tupla)
    print(maximo)
    
ValorMaximo2(historial5)

