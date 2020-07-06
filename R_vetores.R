#VETORES
#criação
a = c(2,3,4,5)
b <- c('ad',343,'adgff','are')
# obs:ambas formas dão o mesmo resultado e o "c" é obrigatorio
c = scan()
#ao executar o vetor 'c' ele começa a receber inputs de num's do console e so para quando nos
#inputarmos um espaço em branco. obs: "c<- scan()" também funciona
c = scan(n=1)# Dessa forma o "c" só irá receber um valor
c = scan(what =   integer())# Dessa forma o "c" só irá receber valores do tipo inteiro
#OBS: A função "scan()" é longa e com muitos parâmetros

#acesso
a[1]
b[2:4]
#obs
#em R o primeiro indice é o 1
#Ao tentar acessar uma sequencia de indices você PRECISA colocar o indice final
#não e possivel pedir q a sequencia de acessos pule de n em n  como no python
#mas é possivel pedir pra um conjunto de indices q n estão em sequencia usando um vetor
a[c(1,2,4)]

#modificar
a[1] = 99
b[2] <- 'kkkkkkku'
# modificação de itens simples é igual ao python exceto indices negativos 
#que são usados para remover elementos
#é possivel modificar um conjunto de items de forma sequencial ou n
a[2:4] <- c(9,8,7)
b[c(4,3,2)] = c('a','b','c')
#também  é possivel fazer isso se o conjunto q vai alterado ser for 
#um mutiplo do conjuto q vai alterar
#nesse caso assim q o conjunto menor terminar ele recomeça e isso vai acontecer n vezes
# sendo n= tamanho do conjuto a ser mudado/tamanho do conjuto q vai mudar
#por isso a necessicade dele ser mutiplo
#obs esse regra tbm vale pra operações entre vetores
a[1:4] = c(0,1)
b[1:4] <- c('lkjhg') # nesse caso não mudda o "'lkjhg'" está dentro de um vetor ou não

#REMOVENDO
b[-4]
# retorna um vetor sem o item q está negativo
#para a alteração permanecer é necessario reatribuir a variavel
b = b[-4]
#para adicionar um novo dado ao vetor bastar atribui-lo ao indice n+1 do vetor sendo
# n = tamanho do vetor
b[4] = 'adadadas'
# também é possivel atribuir conjuntos
a[c(4,5,6)] = c(1,2,3)# como isso está em seq usar o "4:6" tbm serve
#ao atribuir dados a indices q sejam maiores q tamannho do vetor +1 esses indices entre
# o indice novo e o ultimo indice do vetor são preenchidos com "NA"
b[c(6)] = 'antes existe NA' # dnv usar ou n o "c()" n faz diferença ai


#operações
length(a)
#retorna o tamanho do vetor
sort(b)
#ordena o vetor em ordem crescente obs: é possivel usar o arg decreasing = True
sum(a)
# retorna a soma de um vetor
#obs se nesse vetor houver True ele contara como 1 e False como 0
sum(c(5,4,0,2,T,T,F))
# então num vetor so de boleanos é possivel contar o numero de T e F pela soma e tamanho
k = a*2
l = b == 'antes existe NA'
#realizar uma operação entre um vetor e uma constante retorna um vetor com kda elemento
#submetido aquela operação
#obs lembrar da regra usada com a modificao de vetores quando o vetor modificador é mutiplo


#UNIÃO
marcas1 = c('nike','adi','olimpikus','adi')
marcas2 = c('adi','topper','gucci','pulma')
union(marcas1,marcas2)
# cria um vetor q contem os dados de ambos vetores se repetiçoes msm se uma marca se 
#repetir dentro de um msm vetor
#INTERSECÇAO
intersect(marcas1,marcas2)
#retorna um vetor q contém os elementos q tem em ambos o vetores
#obs: nesse caso resultou em so um elemento então não veio um vetor
#DIFERENÇA
setdiff(marcas1,marcas2)
#retorna um vetor q contém todos os elementos do 1 conjunto exceto os q também existem no
# 2 conjunto e nesse caso a ordem importa
setdiff(marcas2,marcas1)
#obs nesse ex a maca "adi" se repete 2 vezes no pri conjunto e 1 no seg conjunto
# e mesmo assim o return veio sem nem 1 "adi" 
#INTERAÇÕES
interaction(marcas1,marcas2)
#gera todas as possiveis combinações entre os itens de kd conjunto
















