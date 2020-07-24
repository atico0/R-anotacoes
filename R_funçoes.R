
###IF/ELSE/ELSE IF

num = 99
if (num%%2==0){
  print('numero é par')
  
}else{
  print('numero é impar')
}


num = 50

if (num<50){
  print('O NUMERO É MENOR QUE 50')
  diferenca = 50-num
  print('A DIFERENÇA É DE:')
  print(diferenca)
}else if(num>50){
  print('O NUMERO É MAIOR QUE 50')
  diferenca = num-50
  print('A DIFERENÇA É DE')
  print(diferenca)
}else{
  print('O NUMERO É IGUAL A 50')
  
}



Vetor = 1:10

#WHILE

i = 1
while(i<10){
  print(i)
  i = i+1
}



#FOR
for (i in 1:10){
  print(i)
}



##BREAK

#sai de um laço


##NEXT
#ignora uma os comandos abaixo dele dentro de um laço sempre que ele for executado







##CRIANDO FUNÇÃO  
#pra criar funções no R usa-se a função "function"
function(parametros){#os parametros não são necessários
  #ALGORITIMO DA FUNÇÃO
  #""""""""""""""""""""  
}
#pra poder usar uma função é necessário atribui-la a uma VAR

saudacao <- function(nome){
  
  print(paste('OLá',nome))
}

saudacao('mundo') #executa a função com o paramêtro "'mundo'"
saudacao # dessa forma a função não é executada mas mostra como está escrita



#também é possivel usar mais de um paramêtro nas funções
xingamento = function(nome,xinga){
  print(paste(nome,'é um',xinga))
}

xingamento('murilo','jogador de free fire')
#note que a independete doque eu escreva oque importa é a ordem em que eu escrevo
xingamento('gordo','edmilson')
#mas é possivel consertar isso explicitando qual o parametro vem antes e depois
xingamento(xinga = 'gordo',nome = 'edmilson')


##Recriando as funções de tamanho sooma media variancia e desvio padrão
#(length,sum,mean,var,sd) sem usar funções já previamente construidas

tamanho <- function(vet) {
  cont = 0
  for (i in vet){
    cont = cont + 1
  }
  return(cont)
}
length(1:10)
tamanho(1:10)


soma <- function(vet) {
  cont = 0
  for (i in vet)  {
    cont = cont+i
  }
  return(cont)
}
sum(1:10)
soma(1:10)

media <- function(vet) {
  return(soma(vet)/tamanho(vet))  
}
mean(1:10)
media(1:10)



variancia <- function(vet) {
  v_media = media(vet)
  v_tamanho = tamanho(vet)
  i = 0
  for (i in  1:v_tamanho){
    vet[i] = (vet[i] - v_media) **2
  }
  return(soma(vet)/(v_tamanho-1))
}
var(1:10)
variancia(1:10)


desvio = function(vet){
  return (sqrt(variancia(vet)))
}
sd(1:10)
desvio(1:10)



for (c in c(1:10)){
  cat(c)
  print('')
}


vet = c(1:10)
for (i in 1:20){
  print(paste(i))
}






print = function(){
  cat('novo print')
}

print()


print()
paste()
cat()

