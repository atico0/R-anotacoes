#Principais tipos do R

##NÚMEROS
#inteiro - integer
5L
class(5L)
#Real - numeric
4
class(4)

#STRING - character
'abc'
class('abc')

#BOLEANO - logical 
# Pode tanto ser TRUE/FALSE como T/F mas precisa sempre usar letras maiusculas
TRUE
FALSE
T
F
class(T)
class(FALSE)
#Valores logicos podem ser convertidos para números e vice-versa sendo que:
as.logical(1)
as.logical(2)
as.logical(0)
as.logical(-1)
as.logical(4L)
#na conversão Núemro-boleano só o 0 é convertido pra false
as.numeric(T)
as.numeric(F)
as.integer(T)
as.integer(F)
# já na conversão boleano/numerico TRUE torna-se 1 e FALSE torna-se 0
#OBS: é possivel fazer até operações com TRUE e FALSE mesmo sem convertelos
F*2
(T + T -(2*F) +9*T)-T/2


