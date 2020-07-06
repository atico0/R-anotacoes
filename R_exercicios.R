#MATRIZES
cadastro <- matrix(c(NA, NA, NA, NA), nrow = 4, ncol = 3, 
                   dimnames = list(NULL, c("nome",'salario','idade')))

cadastro[1,] <- c('Marcos de Aguiar',4000,44)
cadastro[2,] <- c('Paula Miranda', 2500,56)
cadastro[3,] <- c('Emilio Santos', 1200,76)
cadastro[4,] <- c('Pryscilla Albuquerque',3400,40)

cadastro[2,2] = 5500.33

cadastro[,2] = as.numeric(cadastro[,2])*0.70

media_salarial <- mean(as.numeric(cadastro[,2]))

colnames(cadastro) = c("Nome",'Salario','Idade')


#ARRAYS
desempenho = array(0, dim = c(4,5,3))
?array()

matrizes = c('Funcionário 1 - Melissa M.', ' Funcionário 2 - Carlos P.', 'Funcionário 3 - Luciana T.')
colunas = c('Nome','Salário', 'Idade', 'Motivo do Empréstimo' , 'Valor Solicitado')
linhas = c('Cliente 1', 'Cliente 2', 'Cliente 3' , 'Cliente 4')
nomes = list(linhas,colunas,matrizes)
desempenho = array(0, dim = c(4,5,3),dimnames = nomes)
desempenho[,,1] <-cbind(Nome=c("Marcos","Paulo","João","Kamila"),
                          Salario=c(4000,3000,4500,2300),
                          Idade=c(45,33,36,45),
                          Motivo=c("Compra de Carro","Reforma da Casa","Viagem","Compra de Casa"),
                          Valor.Pedido=c(45000,34000,20000,120000))

desempenho[,,2] <-cbind(Nome=c("Marcela","Fábio","Luana","Romero"),
                          Salario=c(3200,4500,2500,1300),
                          Idade=c(34,30,56,54),
                          Motivo=c("Compra de Carro","Viagem","Viagem","Compra de Carro"),
                          Valor.Pedido=c(75000,55000,19000,90000))

desempenho[,,3] <-cbind(Nome=c("Gustavo","Bruno","Joana","Vânia"),
                          Salario=c(11000,5600,1580,6300),
                          Idade=c(56,29,44,57),
                          Motivo=c("Compra de Casa","Viagem","Compra de Apartamento","Reforma da Casa"),
                          Valor.Pedido=c(55000,8000,21000,7000))


c(sum(as.numeric(desempenho[,5,1])),sum(as.numeric(desempenho[,5,2])),
    sum(as.numeric(desempenho[,5,3])))


#FATORES
funcionario1 = factor(c("APR","REP","REP","REP"))
funcionario3 = factor(c("APR","REP","APR","APR"))
funcionario2 = factor(c("REP","APR","REP","REP")) 
library(forcats)
funcionarios = fct_c(funcionario1,funcionario2,funcionario3)
f<-gl(3,2,labels=c("Recife","Rio de Janeiro","Brasília"))
f
?gl()

#LISTAS
matrix(3,2,3)

l_marcos = list(nome= desempenho[1,1,1], salario= desempenho[1,2,1],historico= c(334, 356 ,544))
l_paulo = list(nome= desempenho[2,1,1], salario= desempenho[2,2,1],historico= c(230, 280, 399))
l_joao = list(nome= desempenho[3,1,1], salario= desempenho[3,2,1],historico= c(120, 255, 270))
medias = c(mean(l_marcos$historico),mean(l_paulo$historico),mean(l_joao$historico))
medias



#DATAFRAMES
a<-c(1,3,5,7,9)
b<-c(5,6,3,8,9)
c<-c("a","a","b","a","b")

dados<-data.frame(a,b,c)

data_desempenho = as.data.frame(matrix(0,12,6)) 
data_desempenho[1:4,] = c(desempenho[,,1],rep('Melissa M.',4))
data_desempenho[5:8,] = c(desempenho[,,2],rep('Carlos P.',4))
data_desempenho[9:12,] = c(desempenho[,,3],rep('Luciana T.',4))
data_desempenho
names(data_desempenho) = c('Nomes','Salário', 'Idade', 'Motivo do Empréstimo','Valor Solicitado','vendedor')
str(data_desempenho[,c(2,3,5)] )
data_desempenho[,c(2,3,5)] = c(as.numeric(data_desempenho[,2]),as.numeric(data_desempenho[,3]),as.numeric(data_desempenho[,5]))
data_desempenho[,c(2,3,5)] 
data_desempenho[,6] = as.factor(data_desempenho[,6])
total[funcionario=="Melissa M.",]
total[funcionario=="Carlos P.",]
total[funcionario=="Luciana T.",]#esses eu n soube fz


tab_mot = table(data_desempenho$`Motivo do Empréstimo`)
pie(tab_mot)
barplot(tab_mot)
