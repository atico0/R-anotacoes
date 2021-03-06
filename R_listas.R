#LISTAS
#Listas s�o objetos q cont�m varios elementos simples ou compostos mas ao contrario dos outros objetos
# compostos  R nas listas voce colocar uma str no meio de numeros ou o contrario n�o altera nem o numero
# nem a string
#CRIA��O 
# Op��o 1

clientes_nomes<-c("Roberta","Maria","Marcos","Felipe")
clientes_quant<-c(12,10,22,12)
ID_clientes<-seq(101,104)
novo_cliente<-c(TRUE,FALSE,FALSE,TRUE)

balan�o<- list(ID_clientes,clientes_nomes,clientes_quant,novo_cliente,matrix(0,4,5),mean,9)

# Op��o 2
list(ID=seq(101,104),nome=c("Roberta","Maria","Marcos","Felipe"),Quant=c(12,10,22,12),
     Novo_cliente=c(TRUE,FALSE,FALSE,TRUE))
#OBS: Os elementos da lista podem ou n�o ter nome esses nomes podem ser usados como indice para achar os elementos
#e tamb�m � possivel  colocar nomes em listas j� definidas
names(balan�o)<-c("C�digo do Cliente","Nomes","Quantidades Vendidas",
                  "Novo Cliente?","Hist�rico","M�dia Vendida",'nomes')
#com essa fun��o tamb�m � possivel renomear uma lista e � possivel deixar nomes faltando
names(balan�o)<-c("C�digo do Cliente2","Nomes","Quantidades Vendidas2",
                  "Novo Cliente?2","Hist�rico2","M�dia Vendida2")
#OBS: os nomes v�o para itens de mesmo indice do vetor contendo os nomes

#ACESSANDO ELEMENTOs
#Todos os elementos de uma lista podem ser acessado pelo seu indice numerico da mesma forma q vetores
balan�o[1]
balan�o[c(1,3)]
balan�o[1:3]
bala�o[[1]] # Os elemnentos tamb�m podem ser acessados dessa forma
balan�o[[c(1,3)]]# j� isso resulta no terceiro elemento do primeiro elemento da lista
balan�o[[4:1]]# Essa maneira de acesso eu ainda n entendo como funciona ent�o � melhor evitar
#E alem disso  tamb�m podem ser acessados pelo seu nome (se houver algum)
balan�o$Nomes# essa � a sintaxe
balan�o$`Quantidades Vendidas`
#OBS: ao pedir para q seja mostrada a lista os nomes  s�o mostrados da forma q eles devem ser escritos
# para serem acessados e alguns podem adicionar caracteres como o "$`Quantidades Vendidas`"
#ent�o para garantir � melhor mostrar a lista e copiar o nome da forma q ele aparece no output para tentar acessa-lo
balan�o

#MODIFICANDO
#� possivel modificar tanto acessando os indices quantos os nomes (embora eu prefira usando os nomes)
# e tamb�m modificar os elementos dentro dos elementos
balan�o$Nomes = 'novo nome'# altera o elemento "$Nomes"
balan�o$`Quantidades Vendidas`[1] = 9999 #altera o primeiro elemento do elemento "$`Quantidades Vendidas"
balan�o[1][1] = -999 # essa maneira de altera��o contraintuitivamente altera o primeiro elemento elemento 
#e n�o o o primeiro elemento so primeiro elemento e usar outro numero  no segundo indice al�m do 1 gera um erro
balan�o[[1]][1] = -999 #Esse � o metodo certo pra alterar elemntos dentro de elemento pelo seu indice numerico
balan�o[[1]][3:4] = 888

#Por algum motivo ap�s definida uma lista eu so consegui (sem usar fun��es) adicionar numeros e strings a uma lista
balan�o[8] = 1
balan�o[9] = 'oi'
balan�o [10] = c(1,2,3)
balan�o[10:12] = c(1,2,3)# nesse caso funcionou pq kda elemento da lista recebeu s� um numero
#REMOVENDO ELEMENTOS
#REMOVER ELEMENTOS EM LISTAS � IGUAL A REMOVER ELEMENTOS EM VETORES
balan�o[-1]
balan�o[-c(1,3,7)]
balan�o[-(1:7)]
#Lembrando q isso n�o afeta a lista a menos q a ela seja reatribuido essa nova lista


#OPERA��ES
#Listas n�o podem ser usadas em opera��es matematicas e possuem suas proprias
lista_info<-list(Data="12-10-2020",Gestor="Maur�cio Almeida",M�s_Refer�ncia="Outubro")

lista_final<-c(balan�o,lista_info)
#Junta as duas listas em uma  s�
names(lista_final)
lista_final
#OBS: PODE ser usado como uma forma de adicionar elementos a uma lista sem ser um numero ou string
list(lista_final,c(1,2,3)) 


unlist(lista_final) #Transforma uma lista em um vetor quando h� necessidade de trata-la como tal
#OBS: n�o afeta a lista
#OBS: os nomes dos elementos a que os elementos do vetor originalmente pertenciam ficam sobre ele
unlist(lista_final)[1]

unlist(lista_final)[10]

lista_final$`Quantidades Vendidas`[2]

listanova<-unlist(lista_final)

listanova[10]


























