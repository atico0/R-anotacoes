#Principais tipos do R

#FUNÇÕES usadas para conhecer e mudar os tipo de dadors
class(4)# diz o tipo do dado passado como parâmetro
is.integer(4)# diz se o parâmetro passado é do tipo após o "is." e retorna um valor logico
#OBS: é possivel usar funcções parecidas para se os parâmetro são iguais a dados de diversos tipos
is.array()
is.null()
is.character()

as.character(44)# converte o tipo de dado do parâmetro passado para o tipo que está escrito após o "as."
#OBS: é possivel fazer conversões para todos os tipos de dados com as funções "as."
as.null()
as.logical()
as.numeric('a')# strings não podem ser convertidas para numeros
as.integer(4.9)# na convesão de numeric para integer ele simplismente tira a parte após o ponto
#ao invés de arredondar
as.data.frame.integer()

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
# Valores logicos podem  ser convertidos para números e vice-versa sendo que:
as.character(TRUE)
as.logical('true')
# na conversão character para logical a palavra não precisa estar em letras maisculas 
#mas precisa estar escrita corretamente
as.logical('f')# retorna o valor "NA"

#Valores logicos podem também ser convertidos para números e vice-versa sendo que:
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
(T + T -(2*F) +9*T-T)/2

