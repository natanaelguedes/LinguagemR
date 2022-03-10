#USA list()

#stringS

caracterlist = list('A','B','C')
caracterlist

#numero inteiros

listinteger = list(c(1:10))
listinteger

#lista de float
float = c(1.65,3.88,4.22)
float

complexo = c(5+4i,2+8i,4+3i)
complexo

#lista composta
composta = c("A",T,3)
composta

l1=list(1:50,c("beto","barbosa"), rnorm(20))

#fatia lista

l1[1]
l1[c(1,2)]
l1[2][1]
l1[2][1] = "Natanael"
l1[2][1]
l1[2][1]

names(l1) = c("inteiro","caracteres","numérico")
l1#listas e operacoes nomeadaS PARTE 2/2


l1
vetor = 1:4  
vetor

vetorchar = c("A","B","C","D")
vetorchar

l2 = list(vetor, vetorchar)
l2


#lista nomeada
l3 = list(elem=vetor, letras=vetorchar)
l3

#numerar elemento diretamente

l4 = list(element=3:5,elem2=c(1:10))
l4

l1$inteiro
l1$caracteres
l1$numérico

#tamanho da lista
length(l1)

#extrair elemento especifico
l1$caracteres[1]

#mode dos elementos

mode(l1$caracteres)

l1
l4
  l5 = c(l3,l4)
l5


#transformando vetor em lista
y=(2:12)
y

l = as.list(y)
l
mode(l)

#combinando duas listas

matriz = matrix(1:4, nr=2)
matriz


vec = c(1:4)
vec

lst = list(l5,vec)
lst

#convertendo lista em vetor3
v =c(1:5)
v

#unindo dois elementos
mat = matrix(1:4, nr=2)
mat

ve=c(1:3)
ve

list1 = list(matrix(1:4, nrow = 2))
list1

lst = matrix(1:4, nr=2)
lst

v6= c(1:9)
v6

lst1 = list(v6,l1)
lst1
