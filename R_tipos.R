#Principais tipos do R

#FUN��ES usadas para conhecer e mudar os tipo de dadors
class(4)# diz o tipo do dado passado como par�metro
as.character(44)# converte o tipo de dado do par�metro passado para o tipo que est� escrito ap�s o "as."
#OBS: � possivel fazer convers�es para todos os tipos de dados com as fun��es "as."
as.null()
as.logical()
as.numeric()
as.data.frame.integer()

##N�MEROS
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
#Valores logicos podem ser convertidos para n�meros e vice-versa sendo que:
as.logical(1)
as.logical(2)
as.logical(0)
as.logical(-1)
as.logical(4L)
#na convers�o N�emro-boleano s� o 0 � convertido pra false
as.numeric(T)
as.numeric(F)
as.integer(T)
as.integer(F)
# j� na convers�o boleano/numerico TRUE torna-se 1 e FALSE torna-se 0
#OBS: � possivel fazer at� opera��es com TRUE e FALSE mesmo sem convertelos
F*2
(T + T -(2*F) +9*T-T)/2
