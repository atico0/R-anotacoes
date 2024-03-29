#VETORES
#cria��o
a = c(2,3,4,5,66,-1)
b <- c('ad',343,'adgff','are')
# obs:ambas formas d�o o mesmo resultado e o "c" � obrigatorio
c = scan()
#ao executar o vetor 'c' ele come�a a receber inputs de num's do console e s� para quando nos
#inputarmos um espa�o em branco. obs: "c<- scan()" tamb�m funciona
c = scan(n=1)# Dessa forma o "c" s� ir� receber um valor
c = scan(what =   integer())# Dessa forma o "c" s� ir� receber valores do tipo inteiro
#OBS: A fun��o "scan()" � longa e com muitos par�metros

#acesso
a[1]
b[2:4]
#obs
#em R o primeiro indice � o 1
#Ao tentar acessar uma sequencia de indices voc� PRECISA colocar o indice final
#n�o e possivel pedir q a sequencia de acessos pule de n em n  como no python
#mas � possivel pedir pra um conjunto de indices q n est�o em sequencia usando um vetor
a[c(1,2,4)]

#NOMEANDO
#nomear vetores � igual a nomear variaveis simples
vetor = 1:3
vetor
names(vetor) = c('e1','e2','e3')
vetor
#OBS: tamb�m � possivel acessar os elementos de um vetor pelo seu nome
vetor['e2']


#modificar
a[1] = 99
b[2] <- 'kkkkkkku'
# modifica��o de itens simples � igual ao python exceto indices negativos 
#que s�o usados para remover elementos
#� possivel modificar um conjunto de items de forma sequencial ou n
a[2:4] <- c(9,8,7)
b[c(4,3,2)] = c('a','b','c')
#tamb�m  � possivel fazer isso se o conjunto q vai alterado ser for 
#um mutiplo do conjuto q vai alterar(o conjunto menor precisa ser multiplo do maio)
#nesse caso assim q o conjunto menor terminar ele recome�a e isso vai acontecer n vezes
# sendo n= tamanho do conjuto a ser mudado/tamanho do conjuto q vai mudar
#por isso a necessicade dele ser mutiplo
#obs esse regra tbm vale pra opera��es entre vetores
a[1:4] = c(0,1)
b[1:4] <- c('lkjhg') # nesse caso n�o mudda o "'lkjhg'" est� dentro de um vetor ou n�o

#REMOVENDO
b[-4]
# retorna um vetor sem o item q est� negativo
#para a altera��o permanecer � necessario reatribuir a variavel
b = b[-4]
#para adicionar um novo dado ao vetor bastar atribui-lo ao indice n+1 do vetor sendo
# n = tamanho do vetor
b[4] = 'adadadas'
# tamb�m � possivel atribuir conjuntos
a[c(4,5,6)] = c(1,2,3)# como isso est� em seq usar o "4:6" tbm serve
#ao atribuir dados a indices q sejam maiores q tamannho do vetor +1 esses indices entre
# o indice novo e o ultimo indice do vetor s�o preenchidos com "NA"
b[c(6)] = 'antes existe NA' # dnv usar ou n o "c()" n faz diferen�a ai


#OPERA��ES
length(a)
#retorna o tamanho do vetor
sort(b)
#ordena o vetor em ordem crescente obs: � possivel usar o arg decreasing = True
sum(a)
# retorna a soma de um vetor
#obs se nesse vetor houver True ele contara como 1 e False como 0
sum(c(5,4,0,2,T,T,F))
# ent�o num vetor so de boleanos � possivel contar o numero de T e F pela soma e tamanho
k = a*2
l = b == 'antes existe NA'
#realizar uma opera��o entre um vetor e uma constante retorna um vetor com kda elemento
#submetido aquela opera��o
#OBS:lembrar da regra usada com a modific�o de vetores quando o vetor modificador � mutiplo
#pois ela tamb�m � valida nas opera��es entre vetores
a*c(1,2,3,0) 

#UNI�O
marcas1 = c('nike','adi','olimpikus','adi')
marcas2 = c('adi','topper','gucci','pulma')
union(marcas1,marcas2)
# cria um vetor q contem os dados de ambos vetores se repeti�oes msm se uma marca se 
#repetir dentro de um msm vetor
#INTERSEC�AO
intersect(marcas1,marcas2)
#retorna um vetor q cont�m os elementos q tem em ambos o vetores
#obs: nesse caso resultou em so um elemento ent�o n�o veio um vetor
#DIFEREN�A
setdiff(marcas1,marcas2)
#retorna um vetor q cont�m todos os elementos do 1 conjunto exceto os q tamb�m existem no
# 2 conjunto e nesse caso a ordem importa
setdiff(marcas2,marcas1)
#obs nesse ex a maca "adi" se repete 2 vezes no pri conjunto e 1 no seg conjunto
# e mesmo assim o return veio sem nem 1 "adi" 
#INTERA��ES
interaction(marcas1,marcas2)
#gera todas as possiveis combina��es entre os itens de kd conjunto

###VALE RESSALTAR QUE:

##O R considera todos os tipos de dados n�o compostos como vetores
is.vector(1)
is.vector(T)
#por isso que o ouput do terminal sempre mostra o indice dos elementos mesmo em numeros ou strings
num = 99
num[2]# por isso � tamb�m possivel fazer buscas por indices em elementos simples
num[2:4]=1 #isso tamb�m facilita a convers�o de um elemento em um vetor 
num#(pq tecnicamente ele j� � um vetor)

##� possivel tamb�m selecionar os vetores por valores boleanos

num[T]# mostra todos os elementos
num[c(T,F)]# mostra elemento sim e elemento n�o
num[c(F,F,T)]# mostra s� o 3 elemento

##Os vetores no R s� podem conter um tipo de dado
c(1,T)#nesse caso o "T" vai ser convertido pra numeros
c(1,T,'1')#nesse caso o "T" vai ser convertido pra string junto com o "1"


##Existe uma fun��o chamada "subset" que pega subconjunto de vetores matrizes ou dataframaes
subset(a,a!=66)# retorna todos os elementos de "a" diferentes de 66
subset(a,a>0 & a<66)# retorna todos os elementos de "a" maiores que 0 e menores que 66
