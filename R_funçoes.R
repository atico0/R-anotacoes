
###IF/ELSE/ELSE IF

num = 99
if (num%%2==0){
  print('numero � par')
  
}else{
  print('numero � impar')
}


num = 50

if (num<50){
  print('O NUMERO � MENOR QUE 50')
  diferenca = 50-num
  print('A DIFEREN�A � DE:')
  print(diferenca)
}else if(num>50){
  print('O NUMERO � MAIOR QUE 50')
  diferenca = num-50
  print('A DIFEREN�A � DE')
  print(diferenca)
}else{
  print('O NUMERO � IGUAL A 50')
  
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

#sai de um la�o


##NEXT
#ignora uma os comandos abaixo dele dentro de um la�o sempre que ele for executado







##CRIANDO FUN��O  
#pra criar fun��es no R usa-se a fun��o "function"
function(parametros){#os parametros n�o s�o necess�rios
  #ALGORITIMO DA FUN��O
  #""""""""""""""""""""  
}
#pra poder usar uma fun��o � necess�rio atribui-la a uma VAR

saudacao <- function(nome){
  
  print(paste('OL�',nome))
}

saudacao('mundo') #executa a fun��o com o param�tro "'mundo'"
saudacao # dessa forma a fun��o n�o � executada mas mostra como est� escrita



#tamb�m � possivel usar mais de um param�tro nas fun��es
xingamento = function(nome,xinga){
  print(paste(nome,'� um',xinga))
}

xingamento('murilo','jogador de free fire')
#note que a independete doque eu escreva oque importa � a ordem em que eu escrevo
xingamento('gordo','edmilson')
#mas � possivel consertar isso explicitando qual o parametro vem antes e depois
xingamento(xinga = 'gordo',nome = 'edmilson')


##Recriando as fun��es de tamanho sooma media variancia e desvio padr�o
##(length,sum,mean,var,sd) sem usar fun��es j� previamente construidas

#recriando fun��o length
tamanho <- function(vet) {
  cont = 0
  for (i in vet){
    cont = cont + 1
  }
  return(cont)
}
length(1:10)
tamanho(1:10)

#recriando fun��o sum
soma <- function(vet) {
  cont = 0
  for (i in vet)  {
    cont = cont+i
  }
  return(cont)
}
sum(1:10)
soma(1:10)

#recriando fun��o mean
media <- function(vet) {
  return(soma(vet)/tamanho(vet))  
}
mean(1:10)
media(1:10)


#recriando fun��o var
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

#recriando fun��o sd
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



###usando o breakpoint

for (c in 1:10){
  print(c**2)
}

###VALE RESSALTAR QUE



#� possivel atribuir a fun��es j� definidas novos valores e at� outras fun��es
print = 1
print = function(){
  cat('novo print')
}
print()
#boa sorte pra fazer o print voltar ao normal

print()
paste()
cat()

