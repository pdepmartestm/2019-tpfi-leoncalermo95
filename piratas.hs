type Tesoro = (String, Integer)
type Pirata = (String, [Tesoro])

jackSparrow :: Pirata

jackSparrow = ("JackSparrow", [("brujula", 10000),("frasco de arena", 0)])

cantidadDeTesoros :: Pirata -> Int
cantidadDeTesoros (_, tesoros) = length tesoros

valorDeTesoro:: Tesoro -> Integer
valorDeTesoro (_, valor) = valor

esAfortunado :: Pirata -> Bool
esAfortunado (_, tesoros) = sum(map valorDeTesoro tesoros) > 10000

-- mismoTesoroDistintoValor :: Pirata :: Pirata -> Bool
-- mismoTesoroDistintoValor pirata pirata_2 = 1

tesoroMasValioso :: Pirata -> String
tesoroMasValioso (_, tesoros) = maximum valorDeTesoro tesoros 

-- adquirirNuevoTesoro :: Pirata :: Tesoro -> Pirata
-- adquirirNuevoTesoro pirata tesoro = pirata

-- sinTesorosValiosos :: Pirata -> Pirata
-- sinTesorosValiosos pirata = pirata

-- removerTesoro :: Pirata :: Tesoro -> Pirata
-- removerTesoro pirata tesoro = pirata

-- -- tipo de saqueo

-- soloTesorosValiosos :: [Tesoro] -> [Tesoro]
-- soloTesorosValiosos tesoros = tesoros

-- tesoroEspecifico :: [Tesoro] -> Tesoro
-- tesoroEspecifico tesoros = tesoro

-- noSaqueaNada :: [Tesoro] -> Bool
-- noSaqueaNada tesoros = 1

-- saqueoComplejo :: [Tesoro] -> [Tesoro]
-- saqueoComplejo tesoros = soloTesorosValiosos o tesoroEspecifico

-- -- fin tipo de saqueo
