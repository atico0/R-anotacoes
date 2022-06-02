#LISTAS
#Listas são objetos q contém varios elementos simples ou compostos mas ao contrario dos outros objetos
# compostos  R nas listas voce colocar uma str no meio de numeros ou o contrario não altera nem o numero
# nem a string
#CRIAÇÃO 
# Opção 1

clientes_nomes<-c("Roberta","Maria","Marcos","Felipe")
clientes_quant<-c(12,10,22,12)
ID_clientes<-seq(101,104)
novo_cliente<-c(TRUE,FALSE,FALSE,TRUE)

balanço<- list(ID_clientes,clientes_nomes,clientes_quant,novo_cliente,matrix(0,4,5),mean,9)

# Opção 2
list(ID=seq(101,104),nome=c("Roberta","Maria","Marcos","Felipe"),Quant=c(12,10,22,12),
     Novo_cliente=c(TRUE,FALSE,FALSE,TRUE))
#OBS: Os elementos da lista podem ou não ter nome esses nomes podem ser usados como indice para achar os elementos
#e também é possivel  colocar nomes em listas já definidas
names(balanço)<-c("Código do Cliente","Nomes","Quantidades Vendidas",
                  "Novo Cliente?","Histórico","Mèdia Vendida",'nomes')
#com essa função também é possivel renomear uma lista e é possivel deixar nomes faltando
names(balanço)<-c("Código do Cliente2","Nomes","Quantidades Vendidas2",
                  "Novo Cliente?2","Histórico2","Mèdia Vendida2")
#OBS: os nomes vão para itens de mesmo indice do vetor contendo os nomes

#ACESSANDO ELEMENTOs
#Todos os elementos de uma lista podem ser acessado pelo seu indice numerico da mesma forma q vetores
balanço[1]
balanço[c(1,3)]
balanço[1:3]
balaço[[1]] # Os elemnentos também podem ser acessados dessa forma
balanço[[c(1,3)]]# já isso resulta no terceiro elemento do primeiro elemento da lista
balanço[[4:1]]# Essa maneira de acesso eu ainda n entendo como funciona então é melhor evitar
#E alem disso  também podem ser acessados pelo seu nome (se houver algum)
balanço$Nomes# essa é a sintaxe
balanço$`Quantidades Vendidas`
#OBS: ao pedir para q seja mostrada a lista os nomes  são mostrados da forma q eles devem ser escritos
# para serem acessados e alguns podem adicionar caracteres como o "$`Quantidades Vendidas`"
#então para garantir é melhor mostrar a lista e copiar o nome da forma q ele aparece no output para tentar acessa-lo
balanço

#MODIFICANDO
#É possivel modificar tanto acessando os indices quantos os nomes (embora eu prefira usando os nomes)
# e também modificar os elementos dentro dos elementos
balanço$Nomes = 'novo nome'# altera o elemento "$Nomes"
balanço$`Quantidades Vendidas`[1] = 9999 #altera o primeiro elemento do elemento "$`Quantidades Vendidas"
balanço[1][1] = -999 # essa maneira de alteração contraintuitivamente altera o primeiro elemento elemento 
#e não o o primeiro elemento so primeiro elemento e usar outro numero  no segundo indice além do 1 gera um erro
balanço[[1]][1] = -999 #Esse é o metodo certo pra alterar elemntos dentro de elemento pelo seu indice numerico
balanço[[1]][3:4] = 888

#Por algum motivo após definida uma lista eu so consegui (sem usar funções) adicionar numeros e strings a uma lista
balanço[8] = 1
balanço[9] = 'oi'
balanço [10] = c(1,2,3)
balanço[10:12] = c(1,2,3)# nesse caso funcionou pq kda elemento da lista recebeu só um numero
#REMOVENDO ELEMENTOS
#REMOVER ELEMENTOS EM LISTAS É IGUAL A REMOVER ELEMENTOS EM VETORES
balanço[-1]
balanço[-c(1,3,7)]
balanço[-(1:7)]
#Lembrando q isso não afeta a lista a menos q a ela seja reatribuido essa nova lista


#OPERAÇÕES
#Listas não podem ser usadas em operações matematicas e possuem suas proprias
lista_info<-list(Data="12-10-2020",Gestor="Maurício Almeida",Mês_Referência="Outubro")

lista_final<-c(balanço,lista_info)
#Junta as duas listas em uma  só
names(lista_final)
lista_final
#OBS: PODE ser usado como uma forma de adicionar elementos a uma lista sem ser um numero ou string
list(lista_final,c(1,2,3)) 


unlist(lista_final) #Transforma uma lista em um vetor quando há necessidade de trata-la como tal
#OBS: não afeta a lista
#OBS: os nomes dos elementos a que os elementos do vetor originalmente pertenciam ficam sobre ele
unlist(lista_final)[1]

unlist(lista_final)[10]

lista_final$`Quantidades Vendidas`[2]

listanova<-unlist(lista_final)

listanova[10]


























