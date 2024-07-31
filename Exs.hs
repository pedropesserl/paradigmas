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
tupla0 (s, _, _) = s

tupla1 :: (String, String, Char) -> String
tupla1 (_, s, _) = s

tupla2 :: (String, String, Char) -> Char
tupla2 (_, _, c) = c

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

type Pesquisador = (String, String, Char)
type Grupo = [Pesquisador]

forma_grupo :: Int -> Grupo
forma_grupo n
    | n == 0 = []
    | otherwise = (forma_grupo (n - 1)) ++ [base n]

filtra_doutor :: Grupo -> Grupo
filtra_doutor (h:t)
    | t == [] = []
    | tupla1 h == "doutor" = h : filtra_doutor t
    | otherwise = filtra_doutor t

tratamento_sr :: String -> String
tratamento_sr s = "Sr. " ++ s

tratamento_sra :: String -> String
tratamento_sra s = "Sra. " ++ s

tratamento_srta :: String -> String
tratamento_srta s = "Srta. " ++ s

trata_nomes :: (String -> String) -> [String] -> [String]
trata_nomes _ [] = []
trata_nomes f (h : t) = (f h) : (trata_nomes f t)
