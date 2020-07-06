alunos = function(){
  cat('Digite seu nome: ')
  nome = resposta <- readline(prompt = '')
  cat('Digite seu sexo: ')
  sexo <- readline(prompt = "")
  for (c in 1:3){
    cat( "Digite sua ",c, ' nota')
    notas = resposta <- readline(prompt =   '')
  }
  return(c(nome,sexo,notas))
}

a = c()
for (c in 1:4){
a[c] = alunos()
a
}

a[2] = 3
prompt