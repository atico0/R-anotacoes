#SEQU�NCIAS

#cria��o
1:30
seq(1,30,2)
seq(1,2,0.01)
#O primeiro arg � o limite inferior , o segundo o limite superior  e o terceiro
#(que s� existe no 2 metodo) a distancia entre os passos

#REPETI��ES
rep(3,4)
rep(1:3,4)
rep(1:3,4,2)
rep(1:3,2,each=2)
#cria uma sequencia de repeti��es onde o 1 arg = objeto a ser repetido,
#2 arg = quantas vezes deve ser repetido, 3 arg = tamanho maximo da sequencia,
#4 arg = se o onjeto for n�o for composto ent�o o 4 arg serve como o 2 arg mas se for
# ent�o o 4 arg se torna o numero de vezes q kda elemento (dentro de uma repeti��o) 
#ira se repetir

#AMOSTRAS ALEATORIAS
sample(9)
sample(1:10)
sample(1:10,5)
sample(1:10,6,replace = T)
sample(1:10,6,replace = T,c(0,0,0,0,0,0,0,0,0,1))
# cria uma amostra aleatoria, 1 arg = sequencia de onde vai ser tirada a amostra
#obs: se for s� um numero ele age como limite superior da seq 0:n onde n=n�mero
#2 arg = tamnaho da sequencia, obs: se a amostra n permitir reposi��o o 2 arg n�o pode ser
# maior q o 1 arg, 3 arg = decide se a amostra vai ter reposi��o ou n�o,
#4 arg = um vetor de probabilidade q define a probabilidade de kda item do 1 arg aparecer
#obs: tem q ter o mesmo tamanho do 1 arg


a=  seq(1,30,2)
b= rep(1:3,2,each=2)
c= sample(1:10,6,replace = T)
a[3] = 2
b[3] = 2
c[3] = 2
# todos esses objetos podem ser acessados e modificados como os vetores

