#MATRIZ

produtos = c('Tv','Refrigerador','Notebook','Celular')
quantidades = c(30,36,20,15)

#criação
#usando vetores
vendas <- cbind(produtos,quantidades)
vendas2 = rbind(produtos,quantidades)
vendas
vendas2
#no "cbind" as variaveis dão nome nome as colunas 
#e no "rbind" as variaveis dão nome as linhas

#usando o "matrix()"
matrix(1:100,nrow =5, ncol = 4,byrow = F)
matrix(1:10,nrow =5, ncol = 4,T)
matrix(1:10,nrow =5, ncol = 4,T, dimnames = list(c('linha1','linha2','linha3','linha4','linha5')
                                                ,c('nome1','nome2','nome3','nome4')))
# arg1 = dados. OBS: os dados precisam ser multiplos ou submultiplos da
#quantidade de dados da matriz, arg2= numero de linhas. arg3 = numeros de colunas
# arg4 = Se arg4 = F os dados são preenchidos primeiro nas linhas e dps vão para as colunas
#se  arg4 = T os dados são preenchidos primeiro nas colunas e dps vão para as colunas
#arg5 = uma lista com 2 args q determinam os nomes das listas e colunas
#arglista1 = nome das linhas da matriz. arglista2 = nome das colunas da matriz


#ACESSANDO

vendas[4]
#acessa o 4 elemento da 1 coluna
vendas[,1]
#Acessa todos os elemntos de todas as linhas e da 1 coluna
vendas[2,2]
# Acessa o elemento da segunda linha e segunda coluna
vendas[1:3,1]
#Acessa todos os elementos da linha 1 até a linha 3 da 1 coluna
vendas[1:3,]
#Acessa todos os elementos da 1 até 3 linha de todas as colunas
#oque é feito para as linhas pode ser tbm feito para as colunas
vendas[c(2,4),]
#pega as linhas 2 e 4 das 2 colunas
vendas[1:3,1:2]
#Acessa todos os elementos da 1 até 3 linha das colunas 1 até a 
#(nesse caso isso foram tds os elementos mas so pq a matriz é pequena)

#MODIFICANDO
vendas_jan = vendas
vendas_jan[1,] = c('linha1',1)
vendas_jan
#Para alterar elementos basta acessa-los e reatribuir novos valores a eles como em vetores
#OBS: o valores ints e floats se tornam str's ao sairem de uma matrix então para usa-los
#é necessario usar o as.numeric()
as.numeric(vendas[,2])
#Para retirar valores é necessario colocar um "-" antes do numero da sequencia ou vetor
vendas[,-2]
#exclui segunda coluna
vendas[-1,]
#exclui 1 linha
vendas[-1,-2]
#Exclui ao mesmo tempo a linha 1 e a coluna 2
#OBS: pra essas mudanças perdurarem é necessario reatribuir a matrix como ela mesma modificada
#é possivel fazer coisas mais complexas com a exclusão mas eu n to entendendo como ainda




#OPERAÇÕES
marcos<-c(20,334,420,130)
maria<-c(22,28,19,10)
carlos<-c(120,130,400,230)
vendas_Reais <- cbind(carlos,marcos,maria)
matrix1 = matrix(1,3,6)


dim(vendas_Reais)
ncol(vendas_Reais)
nrow(vendas_Reais)
#"dim" diz as dimensões de uma matriz "ncol" diz as colunas e "nrol" o numero de linha

vendas_Reais *2
vendas_Reais -999
sqrt(vendas_Reais)
#É posiivek fazer as operações entre uma matriz e um numero da mesma forma q entre um vetor 
#e um numero OBS: lembrando  q isso ainda n altera o valor da matriz pois n reatribuiu os valores
mean(vendas_Reais)
sum(vendas_Reais)
# também é possivel fazer operações para tipos de dados compostos
vendas_Reais2 = vendas_Reais *2
vendas_Reais2+(vendas_Reais*2)
vendas_Reais*vendas_Reais2
matrix1+vendas_Reais# As matrizes precisam ter mesma dimensão
#também é possivel fazer operações entre matrizes
#Para fazer o produto matricial é necessário que a quant de colunas de uma matriz seja
#igual a quant de linhas na outra
vendas_Reais%*%matrix1
#como em produto matricial a ordem importa esse é o unico produto matricial possivel entre
#essas matrizes

  


#Tbm é possivel resolver sistemas de equações de uma ou varias variaveis no R
# 2x = 10
solve(2,10)
#3x+2y = 8
#x+y = 2
linha1 = c(3,2,8)
linha2 = c(1,1,2)
A = rbind(linha1,linha2)
solve(A[,1:2],A[,3])


#Também é possivel achar o det de  uma matiz e sua transposta
matrix1 = matrix(1,3,3)
det(matrix1)
t(matrix1)





