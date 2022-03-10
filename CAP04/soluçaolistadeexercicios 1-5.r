getwd()

#exercicio 1 Listar todos os arquivos do diretório de trabalho

getwd()


list.files()

#exercicio 2 criar um dataframe a partir de 3 vetores um de caracteres, um logico e um de numeros

vetcharacter <- c("A","B","C")
NUMVEC <- c(4.5,3.9,7.2)
logic <- c(TRUE,TRUE,FALSE)

df = data.frame(vetcharacter,NUMVEC,logic)
df

#exercicio 3 - considere o vetor abaixo 
#crie um loop que verifique  se há números
#maiores que 10 e imprima o numero
#e uma mensagem no console

vec = c(12,3,4,19,34)
vec

for (i  in 1:length(vec)) {
  if(vec[i]> 10){
    print("Este elemento do vetor é maior que 10")
  }else{
    print(vec[i])
    print("Este elemento é menor que 10")
  }
}


#exercicio 4 - considere a lista abaixo  crie um loop e imprima no console
#cada elemento da lista

lst1 = list(2, 3 ,7 ,11, 13)
lst1
for (i  in 1:length(lst1)) {
  print(lst1)
  
}


#EXERCICIO 5
#CONSIDERE AS DUAS MATRIZES ABAIXO
#FAÇA UMA MULTIPLICAÇÃO  ELEMENT-WISE E MULTIPLICAÇÃO NORMAL ENTRE AS MATRIZES
MAT1 = matrix(c(1:50), nr=5,nc=5, byrow = T)
MAT1

MAT2 = t(MAT1)
MAT2

MAT3 = MAT1*MAT2
MAT3

#EXERCICIO 6 Crie um vetor , matriz, lista e data frame e faça a nomeação
vec1 = c(12,3,4,10,34)
names(vec) <-  c("col1","col2","col3","col4","col5")
vec

dimnames(MAT1) <- (list(c("Obs1","Obs2","Obs3","Obs4","Obs5"), c("var1","var2","var3","var4","var5")))
MAT1

lis1 = list(2,3, c(1,2,3))
names(lst1)<- c("dim1","dim2","dim3")
lst1

df1 = data.frame(c("A","B","C"), c(4.5,3.9,7.2), c(T,T,F))
colnames(df1) <- c("Caracteres","Flot","Logico")
rownames(df1) <- c("obs1","obs2","obs3")
df1
#exercicio 7
#atribua valores NA's  de forma aleatória para 50 elementos da matriz
#dica use a função sample()

#mat 
mat = matrix(1:90,10)
mat
MAT1= matrix(c(1:50), nr=5, nc=5, byrow =  T)
dimnames(MAT1) = (list(c("obs1","obs2","obs3","obs4","obs5"), c("var1","var2","var3","var4","var5")))

MAT1                  

mat[sample(1:50,10)] = NA
mat

#exercicios 8 - Para a matriz abaixo , calcule a soma por linha e por colunas
mat1 <-  matrix(c(1:50), nr=5, nc=5,byrow =  T)
mat1

rowSums(mat1)
colSums(mat1)

#exercicio 9 - Para o vetor abaixo, a soma por linha 
a <- c(100,10,1000)
a

order(a)
a[order(a)]

#exercicio 10 imprima no console todos os elementos da matriz abaixo que forem maiores que 15
mat1 <- matrix(c(1:50), nr=5,nc=5, byrow =  T)
mat1

for (i in mat1) {
if(i>15)  {
  print(i)
}
}




