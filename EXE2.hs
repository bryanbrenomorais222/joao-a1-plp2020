module EXE2 where

-- escreva uma tupla com três elementos
tupla = (4, "Olá", True)

-- operações com fst e snd 
snd (fst (("Hello", 4), True))

-- Testes Aula09
c1 = Individuo (Pessoa "Pedro" "Almeida" Masculino) False

nomeCliente c1

nomeCliente :: Cliente -> String
nomeCliente c = case c of
                    Individuo p ads             ->
                        case p of
                            Pessoa pn sn g      -> pn ++ " " ++ sn

---- "Pedro Almeida" 

nomeCliente' c1

nomeCliente' :: Cliente -> String
nomeCliente' c = case c of
                    Individuo (Pessoa pn sn g) ads  -> pn ++ " " ++ sn

---- "Pedro Almeida"                    

nomeCliente'' c1

nomeCliente'' :: Cliente -> String
nomeCliente''   (Individuo (Pessoa pn sn _) _) = pn ++ " " ++ sn

---- "Pedro Almeida"

c2 = Empresa "Copervile" 1 "Rafael" "Ramos"

nomeEmpresa c2

nomeEmpresa :: Cliente -> String
nomeEmpresa c = case c of
                    Empresa nome _ _ _  -> nome

---- "Copervile"

nomeEmpresa' c2

nomeEmpresa' :: Cliente -> Maybe String
nomeEmpresa' c = case c of
                    Empresa nome _ _ _  -> Just nome
                    _                   -> Nothing

---- "Copervile"

---- Funções para consulta de dados
-- busca nome e gênero de um individuo,
-- nome e cargo de um empresario
-- e status de recebimento de promoção de um indivíduo.

data Dados  =   Pessoa String String
            |   Empresa String String
            |   Individuo String Int Bool
            deriving Show

-- case
getData :: Dados -> String
getData n = case n of
        Pessoa nome genero              -> nome ++ ", do genero: " ++ genero
        Empresa nome cargo              -> nome ++ ", cargo: " ++ cargo

recebPromo :: Dados -> Bool
recebPromo p = case p of
        Individuo nome cpf receb            -> receb

-- pattern matching
getData' :: Dados -> String
getData'    (Pessoa n g) = n ++ ", do genero: " ++ g
getData'    (Empresa n c) = n ++ ", cargo: " ++ c

recebPromo' :: Dados -> Bool
recebPromo' (Individuo _ _ r) = r