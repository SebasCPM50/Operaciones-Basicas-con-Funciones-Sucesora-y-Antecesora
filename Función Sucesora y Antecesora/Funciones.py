# Función sucesor: retorna el siguiente número
def sucesor(n):
    return n + 1

# Función antecesor: retorna el número anterior
def antecesor(n):
    return n - 1

def suma(a, b):
    resultado = a
    for _ in range(b):
        resultado = sucesor(resultado)
    return resultado

def resta(a, b):
    resultado = a
    for _ in range(b):
        resultado = antecesor(resultado)
    return resultado

def multiplicacion(a, b):
    resultado = 0
    for _ in range(b):
        resultado = suma(resultado, a)
    return resultado

def division(a, b):
    if b == 0:
        raise ValueError("No se puede dividir entre 0")
    cociente = 0
    resto = a
    while resto >= b:
        resto = resta(resto, b)
        cociente = sucesor(cociente)
    return cociente

print("Suma:", suma(5, 3))
print("Resta:", resta(5, 3))
print("Multiplicación:", multiplicacion(5, 3))
print("División:", division(10, 2))
