README – Operaciones básicas con Sucesor y Antecesor (Python & Haskell)
Introducción

El objetivo de este trabajo es implementar las operaciones matemáticas básicas (suma, resta, multiplicación y división) usando únicamente dos funciones fundamentales:

Sucesor: devuelve el número siguiente a uno dado.

Antecesor: devuelve el número anterior a uno dado.

Con estas dos funciones se construyen todas las demás operaciones. Esto muestra cómo conceptos simples pueden formar la base de operaciones más complejas.

Conceptos básicos

Sucesor(n) → significa "el número después de n".

Ejemplo: sucesor(3) = 4.

Antecesor(n) → significa "el número antes de n".

Ejemplo: antecesor(3) = 2.

Implementación en Python
# Función sucesor
def sucesor(n):
    return n + 1

# Función antecesor
def antecesor(n):
    return n - 1

Operaciones

Suma(a, b) → aplicar sucesor a a, b veces.

Resta(a, b) → aplicar antecesor a a, b veces.

Multiplicación(a, b) → sumar a tantas veces como indique b.

División(a, b) → restar b a a hasta que ya no se pueda (contar cuántas veces cabe b en a).

Implementación en Haskell
sucesor :: Int -> Int
sucesor n = n + 1

antecesor :: Int -> Int
antecesor n = n - 1

Operaciones

Suma(a, b) → ir sumando con sucesor hasta que b llegue a 0.

Resta(a, b) → ir restando con antecesor hasta que b llegue a 0.

Multiplicación(a, b) → suma repetida.

División(a, b) → resta repetida hasta que a sea menor que b.

#Conclusión
Este trabajo demuestra que con solo dos funciones muy simples (sucesor y antecesor) es posible construir todas las operaciones matemáticas básicas.

Aunque en la práctica los lenguajes ya tienen estas operaciones, este ejercicio ayuda a comprender cómo funcionan desde lo más elemental.
