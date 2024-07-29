module FuncoesDiversas where

calcular_reajuste :: Float -> Float
calcular_reajuste s = s * 1.25

media_ponderada :: Float -> Float -> Float -> Float -> Float -> Float -> Float
media_ponderada n1 p1 n2 p2 n3 p3 = (n1 * p1 + n2 * p2 + n3 * p3) / (p1 + p2 + p3)

tem_idade :: Int -> String
tem_idade i = if i >= 18 then "SIM" else "NAO"

tem_idade_g :: Int -> String
tem_idade_g i
    | i >= 18 = "SIM"
    | otherwise = "NAO"

bissexto :: Int -> Bool
bissexto a = (mod a 4 == 0 && mod a 100 /= 0) || mod a 400 == 0

fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)

fib2 :: Int -> Int
fib2 n
    | n <= 1 = n
    | otherwise = fib2 (n - 1) + fib2 (n - 2)

soma_digitos :: Int -> Int
soma_digitos n
    | n == 0 = 0
    | otherwise = mod n 10 + soma_digitos (div n 10)

remove_pares :: [Int] -> [Int]
remove_pares [] = []
remove_pares (h:t)
    | mod h 2 == 0 = remove_pares t
    | mod h 2 == 1 = h : remove_pares t

aaa :: [Int] -> (Int, Int)
aaa [] = (0, 1)
aaa (h:t)
    | h >= 0 = (h + s, m)
    | h < 0  = (s, h * m)
    where (s, m) = aaa t

type Nome = String
type Nota = Int
type Tipo = String
pontos_turisticos :: Int -> [(Nome, Nota, Tipo)] -> [(Nome, Nota)]
pontos_turisticos n [] = []
pontos_turisticos n l = [(nome, nota) | (nome, nota, tipo) <- l, nota > n, tipo == "parque" || tipo == "museu"]

tupla0 :: (String, String, Char) -> String
tupla0 (r, s, c) = r

tupla1 :: (String, String, Char) -> String
tupla1 (r, s, c) = s

tupla2 :: (String, String, Char) -> Char
tupla2 (r, s, c) = c

base :: Int -> (String, String, Char)
base x
    | x == 1 = ("joao", "mestre", 'm')
    | x == 2 = ("jonas", "doutor", 'm')
    | x == 3 = ("joice", "mestre", 'f')
    | x == 4 = ("janete", "doutor", 'f')
    | x == 5 = ("jocileide", "doutor", 'f')
    | otherwise = ("ninguem", "", 'x')

contMestre :: Int -> Int
contMestre i
    | tupla1 (base i) == "" = 0
    | tupla1 (base i) == "mestre" = contMestre (i - 1) + 1
    | otherwise = contMestre (i - 1)

contDoc :: Int -> Int
contDoc i
    | tupla1 (base i) == "" = 0
    | tupla1 (base i) == "doutor" = contDoc (i - 1) + 1
    | otherwise = contDoc (i - 1)

contMD :: String -> Int
contMD t
    | t == "mestre" = contMestre 5
    | t == "doutor" = contDoc 5
    | otherwise = 0
