-- quadrado do dobro de um número
qdrDobro :: Num a => a -> a
qdrDobro x = (x * 2)^2

-- dobro do quadrado de um número
dobroQdr :: Num a => a -> a
dobroQdr x = (x^2) * 2

-- média aritmética de três notas
media :: Fractional a => a -> a -> a -> a
media x y z = (x+y+z)/3

-- valor de Quilowatt a ser pago
valQuilowatt :: Fractional a => a -> a -> a
valQuilowatt sal quil = (quil * (sal/5)) * 0.85
