#ATRIBUIÇÃO

#No R as variavéis podem ser atribuidas tanto usando "=" quanto "<-"

v1 = 54
v2 = '88'

#para saber quais VAR's estão na memoria você pode usar a função "ls()"
ls()
#Também é possivel saber o quais os dados contidos em cada VAR execuntando o nome dela
v1

#DELETANDO

#Para deletar basta usar a função "rm(VAR)"
rm(v1)
#também é possivel combinar funções para apagar todas as variaveis 
variaveis = ls()
rm(variaveis)

#NOMEANDO
#é possivel nomear variaveis de qualquer tipo no R usando a função "name(VAR)"
b = 1 
names(b) = 'adad'
b
#sendo que em variaveis de 1 dimensão o nome é dado aos elementos

