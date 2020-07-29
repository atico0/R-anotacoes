install.packages("forcats",dependencies = T)
library("forcasts")

alunos = function(alunos_dataframe,linha){
  linha_somada = linha
  resp = ''
  while (resp != 'n' ) {
    alunos_dataframe[linha_somada,1] = resposta <- readline(prompt = 'digite seu nome:')
    alunos_dataframe[linha_somada,2] <- (readline(prompt = "Digite seu sexo: [M/F]")
    for (c in 1:3){
      cat( "Digite sua ",c, ' nota')
      alunos_dataframe[linha_somada,2+c] = as.numeric(resposta <- readline(prompt =  ""))
    }
    alunos_dataframe[linha_somada,6] = round(mean(c(alunos_dataframe[linha_somada,3],
                                     alunos_dataframe[linha_somada,4],
                                     alunos_dataframe[linha_somada,5])),2)
    alunos_dataframe[linha_somada,7] = alunos_dataframe[linha,6]>=7
    
    cat('A média do aluno foi: ',alunos_dataframe[linha_somada,6])
    print('')
    if(alunos_dataframe[linha_somada,7]){
      print('ALUNO APROVADO')
    }else{
      print('ALUNO REPROVAOD')
    }
    linha_somada = linha_somada+1
    resp =  readline(prompt = 'Quer continuar? [S/N]')
  }
  return(alunos_dataframe)
}


str(relacao)

relacao = data.frame(matrix(NA,ncol = 7))

names(relacao) = c('NOME','SEXO','NOTA1','NOTA2','NOTA3','MEDIA','APROVADO')
relacao[,c(3,4,5)] = as.numeric(relacao[,c(3,4,5)])
relacao[,2] =(kelacao[,2])

relacao = alunos(relacao,1)
str(relacao)


relacao[3,] = 'a'



c(1:10,'oi')





