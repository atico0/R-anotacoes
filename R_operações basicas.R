#OPERAÇÕES BASICAS NO R

#matematicas
#soma
1+1
#subtração
1-1
#multiplicação
3*3
#divisão
4/2
#exponeciação
5**2
#obs: a exponeciação tabém pode ser feita com o ^
#resto da divisão
5 %%2
#parte inteira de uma divisão
5%/%2
#a ordem de precedencia entre as operações eu  n sei mas o "()" ainda vem primeiro
#os operadoes logicos são identicos aos do python (<,>,==,!=,<=,>=)

#operações menos basicas
#logaritimo
log(2,base = 2)
#obs por padrão a base é "e" (ln)
#fatorial
factorial(5)
#valor absoluto
abs(-55)
#seno, coseno, tan
sin(pi)
cos(pi)
tan(pi)
#raiz quad
sqrt(9)


#OBS: Vale por ultimo ressaltar que todos os números usados nesses exemplos não são inteiros para o R
class(4)# Função que diz o tipo de um dado
#Para ele ser considerado um inteiro (ou integer) pode-se usar a função "as.integer()" 
inteiro = as.integer(9)
class(inteiro)
#ou colocar um "L" após o número (precisa ser maiusculo)
inteiro = 9L
class(inteiro)

