#ATRIBUI��O

#No R as variav�is podem ser atribuidas tanto usando "=" quanto "<-"

v1 = 54
v2 = '88'

#para saber quais VAR's est�o na memoria voc� pode usar a fun��o "ls()"
ls()
#Tamb�m � possivel saber o quais os dados contidos em cada VAR execuntando o nome dela
v1

#DELETANDO

#Para deletar basta usar a fun��o "rm(VAR)"
rm(v1)
#tamb�m � possivel combinar fun��es para apagar todas as variaveis 
variaveis = ls()
rm(variaveis)

#NOMEANDO
#� possivel nomear variaveis de qualquer tipo no R usando a fun��o "name(VAR)"
b = 1 
names(b) = 'adad'
b
#sendo que em variaveis de 1 dimens�o o nome � dado aos elementos

