# Arrays
#arrays sao matrizes em 3 dimensoes (ou seja voce pode ter nele N matrizes 2d neles)

#Criacao
#usando vetores
vendas<-c(12,24,30)
produtos<-c("TV","Geladeira","Cama")
array(c(produtos,vendas),dim = c(3,2,2))
vendas_totais<-array(c(produtos,vendas),dim = c(3,2,3))
#usando matrizes
m1 =matrix(0,3,3,T)
m1
m2 =matrix(1,3,3,T)
m2
marray = array(c(m1,m2), dim = c(3,3,2))
marray
#o "array()" pode ser usado  tanto para gerar matrizes como vetores independete doque foi usado
#para fazer esse array (para alocar o elementos e fazer operacoes e alteracoes usa-se a mesma
# regra do multiplo ou submultiplo)

array(c(m1,m2), dim = c(3,3)) # vai gerar so uma matriz
array(c(m1,m2), dim = c(3)) # vai gerar so um vetor
array(c(produtos),dim = c(3,2,2)) # vai gerar um array

# Nomenando as dimensoes
nomes_variaveis<-c("Produtos","Quantidade")
nomes_matrizes<-c("Janeiro","Fevereiro","Marco")
nomes_linhas<-c("Marcos","Joao","Maria")
vendas_totais<-array(c(produtos,vendas),dim = c(3,2,3),dimnames = list(nomes_linhas,nomes_variaveis,nomes_matrizes))
vendas_totais
# "array()" arg1 = os dados do array, arg2 = as dimensoes do array,
#arg3 = uma lista com 3 vetores para o nome das linhas das colunas e das matrizes(nessa ordem)

#modificando e acessando elementos
vendas_totais[1,1,1] # acessa o elemento da 1 linha 1 coluna e 1 matriz
vendas_totais[1,,2] # acessa os elementos da 1 linha todas coluna e 2 matriz
vendas_totais[,c(1,2),2] # acessa os elementos de todas linha 1 e 2 colunas e 2 matriz

vendas_totais[1,2,1]<-14
vendas_totais[2 ,, 2]<-c("Freezer",10)
vendas_totais[2:3,2,3]<-c(34,80)
vendas_totais[c(1,3),2,3]<-c(20,40)
#E a mesma coisa q nas matrizes so que com uma numero (ou sequencia) a mais 
# (o numero q indica quai matriz ou matrizes vc pretende seleciona)

#OPERACOES
marray +3 # Soma todos os elementos a 3
marray + c(99,-99) # soma os elemntos a 99 e -99 (nessa ordem),
marray + c(99,-99,0)#OBS: a alternancia entre 99 e -99 ocorre entre as linhas nao entre as colunas
marray * (marray+15)# multiplica kda respectivo elemento do marray por (ele mesmo +15)
sum(marray)# da a soma de todos os elementos
mean(marray)# da a media dos elementos
sqrt(marray) # da a raiz quadrada de todos os elementos



#"apply()": e uma funcao q submete os elementos de um array  a uma certa operacao
# mas so entre as mesmas linhas ou colunas das matrizes 
#arg1 = array, arg2 = se for igual a 1  a operacao sera feita entre as mesmas linhas
#das matrizes se for igual a 2 entre as mesmas colunas
apply(marray, 2,sum) # soma as 1 colunas de todas as matrizes 
#sepadaradamente da soma das 2 colunas e das 3 colunas
c( sum(marray[,1,1:2]), sum(marray[,2,1:2]), sum(marray[,3,1:2]))# faz a mesma coisa
# que o apply acimas

apply(marray, 1,sum)# soma as 1 linha de todas as matrizes 
#sepadaradamente da soma das 2 linhas e das 3 linhas
c( sum(marray[1,,1:2]), sum(marray[2,,1:2]), sum(marray[3,,1:2]))# faz a mesma coisa
#OBS: como as matrizes sao compostas dos mesmos elementos ambos "applyy's" darao o mesmo resultado












