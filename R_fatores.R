# Fatores são vetores usados em  variaveis qualitativas e uma vez definidas quais são não podem ser adicionados
# outros tipos de variaveis

#Criação
#usando vetores
fator2 = c(1,2,3,1,1,2,2,2,2,4,4)
fator
fator2 = as.factor(fator2)
fatorn = as.factor(c(1,1,3,3,1,2,2,2,2,2))
#Usando funçoes
fator = factor(c('1','2','3','1','1','2','2','2','2'))# esse fator uma vez definido so vai aceitar valores '1' '2' e '3'
fator[1] = '99'
#OBS: como os elementos de um fator não são usados para calculos mesmo os numeros podem ser usados em
#forma de string

#Acessando
fator[1]
fator[1:3]
fator[c(1,2,4)]

#Modificando
fator[1] = 3
fator[1:3] = 2
fator[c(1,2,4)] = 1
#O acesso e a modificação são iguais aos de vetores 


#OPERAÇÕES

produtos_online<-factor(c("Produto A","Produto C","Produto A","Produto B", "Produto C","Produto B"))
produtos_pres<-factor(c("Produto C","Produto C","Produto D","Produto A", "Produto A"))

library(forcats)# biblioteca com funçoes que tratam de fatores

fct_c(produtos_online,produtos_pres)# Cria um fator com os niveis e elementos igual a união dos
# dois usados como args
lvls_revalue(fator,c('mac','fem','outros'))#substitui os niveis e os elementos por outro
#OBS: isso não altera a variavel original
#OBS: a substituição é feita pelos elementos na ordem em que os niveis se encontram e a ordem do vetor com os novos niveis
levels(fator) # retorna os leveis do fator
levels(fator) = c('mac','fem','outros') #faz o mesmo da função acima mas ele altera a variavel original

fct_recode(fator, 'FEM' = '2',MAS= '1')# subistitui um ou mais niveis por outro valor qualquer
#OBS: um nivel não pode ser substituido por um numero sem aspas
#OBS: não mexe na variavel original 


#AGRUPANDP NIVEIS
como_soube<-factor(c("Internet","INTERNET","net","Google","Pesquisa na Web","amigo","amiga","uma pessoa"))

fct_collapse(como_soube,Internet=c("Internet","INTERNET","net","Google","Pesquisa na Web"),
                Amigo=c("amigo","amiga","uma pessoa") ) #Essa função junta varios niveis difentes de um fator
# Em um nivel mais generico para uma mais facil vizualização e manipulação

estado_civil<-factor(c("solteiro","solteiro","viúvo","divorciado","solteiro","casado","casado",
                       "união estável","viúvo"))

fct_lump(estado_civil,2,other_level = "Outros")  #2 classes principais + "Outros"

fct_lump(estado_civil,3,other_level = "Outros")  #3 classes principais + "Outros"
# essa função mantém os arg2=N niveis mais recorrentes e classifica os demais em um nivel generico


#REORDENDO NIVEIS 
#OBS: os niveis inicialmente são ordenados por ordem alfabetica e crescente
fct_relevel(estado_civil,'solteiro','união estável', 'casado', 'divorciado', 'viúvo')#não altera VAR original
#Reordena os lelveis na ordem q foram colocados nessa função


faturamento<-c(30,24,12,40,20,30,44,53)
escolaridade<-factor(c("Fundamental","Superior","Mestrado","Doutorado","Doutorado",
                       "Fundamental","Mestrado","Doutorado"))

#fundamental = 30, 30 ---> mean = 30    sum = 60
#Superior = 24  (mean = sum)
#Doutorado = 53, 40 , 20  --> média = 37,7   sum = 113
#mestrado = 12 , 44   mean=28   sum=56


#media:      Superior < Mestrado < Fundamental < Doutorado
#Sum:        Superior < Mestrado < Fundamental < Doutorado 


#Quem tem maior faturamento?  Fundamental, Superior, etc...?

fct_reorder(escolaridade,faturamento,mean)# reordena os leveis com  base  em qual level tem maior media
fct_reorder(escolaridade,faturamento,sum) # reordena os leveis com  base  em qual level tem maior soma
#OBS os valores dos elementos do vetor 1 usados no calculo da nova ordem dos leveis
#são decididos com base no valor do elemento de mesmo indice do arg2=VETOR


sessionInfo()






