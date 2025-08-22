--- Sucesor y predecesor
sucesor :: Int -> Int
sucesor n = n + 1

predecesor :: Int -> Int
predecesor n = n - 1

-- Suma y multiplicación de enteros positivos
suma :: Int -> Int -> Int
suma a 0 = a
suma a b = suma (sucesor a) (predecesor b)

multiplicacion :: Int -> Int -> Int
multiplicacion _ 0 = 0
multiplicacion a b = suma a (multiplicacion a (predecesor b))

-- Resta y división de enteros positivos
resta :: Int -> Int -> Int
resta a 0 = a
resta a b = resta (predecesor a) (predecesor b)

division :: Int -> Int -> Int
division _ 0 = error "No se puede dividir entre 0"
division a b
    | a < b     = 0
    | otherwise = sucesor (division (resta a b) b)

-- Suma de números reales (Float)
addReal :: Float -> Float -> Float
addReal x y = x + y

-- Función main para los ejemplos
main :: IO ()
main = do
    print (suma 5 3)
    print (multiplicacion 5 3)
    print (resta 5 3)
    print (division 10 2)
    print (addReal 3.2 4.5)
