# DATAFRAMES s�o objetos muito similares a matrizes onde as colunas equivalem as variaveis

### CRIA��O
## Op��o 1
#Cria  um dataframe a partir de uma matrix anteriormente criada
fornecedores<-c("A","B","E","D","X")
quant_Jan<-c(320,230,100,340,10)
quant_Fev<-c(220,630,60,50,60)
quant_Mar<-c(520,430,100,34,10)

resumo<-cbind(V1 = fornecedores,quant_Jan,quant_Fev,quant_Mar)
#OBS: nesse caso n�o � necess�rio explicitar o nome das variaveis dos dataframes pois a elas sera 
#atribuido o nome da variavel utilizada nela
resumo

resumo_df<-as.data.frame(resumo)
resumo_df
str(resumo_df) #OBS: neste casos ser� necess�rio reatribuir kda coluna numerico  como ela mesma
#usando a fun��o "as.numeric()" pois nesse metodo as colunas originalmente numericas foram convertidaas
#em strings pela matriz

## Op��o 2
#cria um dataframe com dados vetores ainda n�o criados
dados = data.frame(fornecedores=c("A","B","E","D","X"),
                   quant_Jan=c(320,230,100,340,10),
                   quant_Fev=c(220,630,60,50,60),
                   quant_Mar=c(520,430,100,34,10))
#OBS: nesse caso � necessario explicitar os nomes das variaveis porque se n�o ela ser� nomeada como kda
# elemento nela presente
dados
data.frame(c("A","B","E","D","X"),
           c(320,230,100,340,10),
           c(220,630,60,50,60),
           c(520,430,100,34,10))#Dataframe sem nomes

str(dados)

## Op��o 3
#Cria um dataframe com vetores j� anteriormente criados
dados2<-data.frame(fornecedores,V2=quant_Jan,V3=quant_Fev)
#Nesse caso  os nomes foram usados em alguns embora n�o fossem  necess�rios para mostrar q eles podem
# ser completamente diferentes do nome dos elementos q eles est�o recebendo
dados2
str(dados2)


#ACESSANDO ELEMENTOS
# A Pesquisa de elementos nos Dataframe tem semelhan�as tanto com listas como com matrizes

resumo_df[2,] #acessando a linha 2 de todas as colunas

resumo_df[2:4,] #acessando uma sequ�ncia de linhas

resumo_df[c(1,5),] #acessando as linhas a partir de um vetor

resumo_df$quant_Jan #acessando coluna $quant_Jan

resumo_df[,'quant_Jan'] #acessando coluna $quant_Jan


resumo_df[,2] #acessando coluna $quant_Jan pelo indice e n�o pelo nome (mesmo resultado do acesso acima)

resumo_df[,c(1,4)] #acessando colunas a partir de um vetor de indices

resumo_df$fornecedores[3] # acessando elemento linha 3 da coluna $fornecedores

resumo_df[3,1] # acessa elemento da linha 3 da coluna 1 (mesmo resultado do acesso acima)


#####  MODIFICANDO
## Modificando tipos de daodos das colunas
  fornecedores<-c("A","B","E","D","X")
  quant_Jan<-c(320,230,100,340,10)
  quant_Fev<-c(220,630,60,50,60)
  quant_Mar<-c(520,430,100,34,10)
  
  resumo<-data.frame(fornecedores,quant_Jan,quant_Fev,quant_Mar)  
#Adicionei uma forma mais direta de cria��o de um dataframe

str(resumo)  #tipos corretos das vari�veis


#Pela outra forma....
resumo_1<-cbind(fornecedores,quant_Jan,quant_Fev,quant_Mar)
resumo_1<-as.data.frame(resumo_1)
str(resumo_1)  #...tudo � convertido para fator.(POR ALGUM MOTIVO AGR EST� CONVERTENDO PARA STRING 
#(ou character se preferir))


resumo_1$quant_Fev + 10  #N�o � poss�vel porque est� como categ�rica (STRING OU CHARACTER)
#para corrigir esta convers�o autom�tica
resumo_1$quant_Jan <- as.numeric(as.character(resumo_1$quant_Jan))
resumo_1$quant_Fev <- as.numeric(as.character(resumo_1$quant_Fev))
resumo_1$quant_Mar <- as.numeric(as.character(resumo_1$quant_Mar))

resumo_1$quant_Jan <- as.numeric(resumo_1$quant_Jan)# COMO AGR J� EST� COMO AGR J� EST� COMO STRING
resumo_1$quant_Fev <- as.numeric(resumo_1$quant_Fev)# ESSE METODO J� FUNCIONA
resumo_1$quant_Mar <- as.numeric(resumo_1$quant_Mar)
str(resumo_1)


## Modificando o DataFrame

resumo_df[5,2] = 0

resumo_df[5,c(2,3)] = -1

resumo_df[c(5,4),c(2,3)] = -1

resumo_df$quant_Jan[5]<-100

resumo_df$quant_Fev[2:4]<-c(640,75,60)

resumo_df$quant_Mar[c(1,4)]<-c(130,400)

resumo_df$fornecedores<-c("Camil","Zaeli","Tio Jo�o","Danone","Liza")

resumo_df[5,] <-c("Friboi",0,0,55,-3) 

resumo_df[2,] <-c("Fuckboy",-2,4,556,-3) 

# Eu acho essa parte n�o precisa de explica��o

# Adicionar vari�veis ao Dataframe

resumo_df$quant_Abril <- c(230,250,140,320,110,99)

# Remover vari�veis do Dataframe

resumo_df <- resumo_df[,-5] #remove 5 coluna

# Adicionando e removendo casos

resumo_df <- resumo_df[-6,] # retira linha 6

resumo_df <- resumo_df[,-2] #retira coluna 2

resumo_df <-resumo_df[-(c(1,4)),] # retira as linhas 1 e 4


#adiciona linhas ao DATAFRAME
resumo_df[6,] <- c('F',-10,9999,2)







#para adicionar uma nova linhas � necessario criar uma matriz  com as linhas que se deseja adicionar
linha1 = c('Z',999,223,123)
linha2 = c('K',99,23,13)
novas_linhas =  matrix(c(linha1,linha2),ncol = 4,byrow = T)
names(novas_linhas) = names(resumo)
nova_matriz = rbind(resumo,novas_linhas)
# (AS LINHAS PRECISAM TER OS MESMOS NOMES DO DATAFRAME)
nomes = c('fornecedores', 'quant_Jan', 'quant_Fev', 'quant_Mar')
names(novas_linhas) = nomes
#criar uma segunda matriz (usando o rbind())
#comoposta pela
?matrix()
####PARTE ACIMA AINDA EST� DANDO ERRO ENT�O










### OPERA��ES
ncol(resumo)
nrow(resumo)
dim(resumo)
dim(resumo)[1] #linhas
dim(resumo)[2] #colunas
# fazem o mesmo  q nas matrizes

length(resumo) # da o numero de colunas
length(resumo$quant_Jan) # da  tamanho da coluna
names(resumo) # da todos os nomes das colunas

View(resumo) # abre uma janela para ver o dataframe

summary(resumo)# da informa��es o dataframe
str(resumo) # como os dados do dataframe est�o em forma de character as informa��e est�o imprecisas

resumo$quant_Jan <- as.numeric(resumo$quant_Jan)
resumo$quant_Fev <- as.numeric(resumo$quant_Fev)
resumo$quant_Mar <- as.numeric(resumo$quant_Mar)
str(resumo)

summary(resumo)

mean(resumo$quant_Jan) # media
median(resumo$quant_Jan) # mediana
sd(resumo$quant_Jan) # desvio padr�o

##V#ale ressaltar que:
##� possivel ordenar o dataframe por uma coluna especifica

fornecedores<-c("X","E","B","A","D")
quant_Jan<-c(320,230,100,340,10)
quant_Fev<-c(220,630,60,50,60)
quant_Mar<-c(520,430,100,34,10)

resumo<-cbind(fornecedores,quant_Jan,quant_Fev,quant_Mar)

resumo

resumo_df<-as.data.frame(resumo)
resumo_df
str(resumo_df) 

order(resumo_df$fornecedores)# retorna um vetor com os indices dos elementos da coluna fornecedores 
#da forma que os elementos dos seus respectivos indices ficariam se o dataframe fosse ordenado
#em fun��o da coluna fornecedores

resumo[order(resumo_df$fornecedores),]# Ordena o resumo em fun��o da coluna fornecedores 
#(N�O afeta o dataframe original)

resumo[order(resumo_df$fornecedores, decreasing = T),]# Ordena o resumo em fun��o da coluna fornecedores 
#(N�O afeta o dataframe original) mas em ordem decrescente 


subset()

