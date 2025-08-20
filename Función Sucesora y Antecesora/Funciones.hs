-- sucesor: devuelve el número que sigue
sucesor :: Int -> Int
sucesor n = n + 1

-- antecesor: devuelve el número anterior
antecesor :: Int -> Int
antecesor n = n - 1

-- cualquier número que se sume con 0 da el mismo número
suma :: Int -> Int -> Int
suma a 0 = a
suma a b = suma (sucesor a) (antecesor b)

-- cualquier número que se reste entre 0 da el mismo número
resta :: Int -> Int -> Int
resta a 0 = a                    
resta a b = resta (antecesor a) (antecesor b)

multiplicacion :: Int -> Int -> Int
multiplicacion _ 0 = 0
multiplicacion a b = suma a (multiplicacion a (antecesor b))

division :: Int -> Int -> Int
division _ 0 = error "No se puede dividir entre 0"
division a b
    | a < b     = 0
    | otherwise = sucesor (division (resta a b) b)

main :: IO ()
main = do
    print (suma 5 3)
    print (resta 5 3)
    print (multiplicacion 5 3)
    print (division 10 2)
