module Exs where

eh_par :: Int -> Bool
eh_par n = mod n 2 == 0

eh_impar :: Int -> Bool
eh_impar n
    | mod n 2 == 0 = False
    | mod n 2 == 1 = True

eh_triangulo :: Int -> Int -> Int -> Bool
eh_triangulo a b c
    | a + b <= c = False
    | a + c <= b = False
    | b + c <= a = False
    | otherwise = True

formarTriangulo :: Int -> Int -> Int -> Bool
formarTriangulo a b c = condicao
  where
    condicao = somaAB > c && somaAC > b && somaBC > a
      where
        somaAB = a + b
        somaAC = a + c
        somaBC = b + c

media :: Float -> Float -> Float -> String
media a b c
    | m >= 7 = "Aprovado"
    | otherwise = "Reprovado"
    where
        m = (a + b + c) / 3

fat :: Int -> Int
fat 0 = 1
fat n = n * fat (n - 1)

fatG :: Int -> Int
fatG n
    | n == 0 = 1
    | n > 0 = n * fatG (n - 1)
    | otherwise = error "Factorial not defined for negative integers"

pot :: Int -> Int -> Int
pot x n
    | n == 0 = 1
    | n > 0 = x * pot x (n - 1)
    | n < 0 = error "Potência não definida para inteiros negativos"

somatorio :: Int -> Int
somatorio 0 = 0
somatorio y = if y > 0
    then y + somatorio (y - 1)
    else error "Somatório não definido para inteiros negativos"

somatorioG :: Int -> Int
somatorioG y
    | y == 0 = 0
    | y > 0 = y + somatorioG (y - 1)
    | y < 0 = error "Somatório não definido para inteiros negativos"

