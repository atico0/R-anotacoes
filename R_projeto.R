alunos = function(alunos_dataframe,linha){
  vetor = as.vector(c(10000))
  cat('Digite seu nome: ')
  nome = resposta <- readline(prompt = '')
  cat('Digite seu sexo: ')
  sexo <- readline(prompt = "")
  for (c in 1:3){
    cat( "Digite sua ",c, ' nota')
    nota = resposta <- readline(prompt =   '')
    vetor = as.vector(c(vetor,nota))
  }
  vetor = vetor[-1]
  vetor = as.numeric(vetor)
  media = mean(vetor)
  vetor = c(nome,sexo,vetor,round(media,2),media>=7)
  matriz = rbind(vetor)
  names(matriz) = c('NOME','SEXO','NOTA1','NOTA2','NOTA3','MEDIA','APROVADO')
  alunos_dataframe[linha,] = matriz
  return(alunos_dataframe)
}


str(relacao)

relacao = data.frame(matrix(NA,ncol = 7))

names(relacao) = c('NOME','SEXO','NOTA1','NOTA2','NOTA3','MEDIA','APROVADO')
relacao[,c(3,4,5)] = as.numeric(relacao[,c(3,4,5)])

relacao = alunos(relacao,2)



asdasdasd



c(1:10,'oi')


