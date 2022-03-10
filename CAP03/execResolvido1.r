
getwd()

#vetores de logicos e de um numero

#Execicio 1 -Pesquisa pela função que permite listar todos os diretorios de trabalho
#diretorio de trabalho
#logicos e numeros

list.files()

vetordecaracter = c("A","B","C")
numerovec = c(4.5,1.9,7.2)
logic = c(TRUE,FALSE,TRUE)
df1 = data.frame(vetordecaracter,numerovec,logic)
df1

#exercicio 2   -  crie um dataframe     a parte de 3 vetores um de caracteres
#um lógico e um de numeros

character= c(12,3,4,19,34)
character

#exercicio 3 - crie um loop que verifique se há numeros maiores que 10 e imprimir o numero
#e uma mensagem no console


vec1 <- c(1,22,3,4,5,6)
vec1

for (i in 1:length(vec1)) {
 if(vec1[i]>10){
   print(vec1[i]>10)
   print("Este elemento do vetor é maior que 10")
   isTRUE(vec1[i])
 } else{
      print(vec1[i])
   isTRUE(vec1[i])
    isTRUE(vec1[i])
 print(isFALSE(vec1[i]))
        print("Este elemento é menor que 10")
 }
}
#criar uma lista e imprimir no console
#execicio 4 considere a lista abaixo
#nao é excluida após a execução
ls2 <-   list(2,3,5,7,11,13)
ls2

for(i in 1:length(ls2)){
  print(ls2[i])
}