

vetor = c("Data","Science","academy")
vetor

vetornumerico = c(1,2,3,4)
vetornumerico

complexo = c(5+4i,6+6i,7+8i)
complexo

#logicos

vetorlogico = c(TRUE,FALSE,FALSE,FALSE)
vetorlogico

#numeros inteiros

inteiro = c(1,2,3,4)
inteiro

#usando seq 
a=seq(1:40)

is.vector(a)
#usando rap

s=rep(2:40)

is.vector(s)
#indexar vetores

a = c(1,2,3,4)
a
a[1]
a[4]


b = c("data","science","academy")
b[2]
b[3]

#combinando vetores
v1 = c(2,4,6)
v2 = c(2,4,8)
c(v1,v2)

#operacoes com vetores

y = c(2,4,6,8)
x = c(4,6,8,4)
x *5
x+y
x-y
x/y

alfa = c(10,20,30)
beta = c(1,2,3,4,5,6,7,8,9,10)
alfa+beta

#vetor nomeado

v = c("Natanael","G")
names(v) = c("Nome","Sobrenome")
v
v["Nome"]

matrix(c(2,4,6,8,10), nr = 3)
matrix(c(2,4,6,8,10), nr = 3)
matrix(c(2,4,6,8,10), nr = 6)

#numeros de linhas

matrix(c(1,2,3,4,5,6), nr = 2)

#elemento multiplo

matrix(c(1,2,3,4,5,6), nr=6)
?matrix #help

#pesquisando
dados = c(1:30)
matrix(data = dados , nr=5,nc=2, byrow =  T)
matrix(data=dados, nr=5,nc=5)

#fatiando matriz

mat= matrix(c(2,4,6,8),nr=2)
mat
mat[1,2]
mat[2,2]
mat[1,3]
mat[,2]

#matriz diagonal
m = 1:3
diag(m)

#extraindo vetor de matriz
v = diag(matriz1)
v

#transposta

b = matrix(c(2,4,8,12), nr=2, nc=2)
b

t(b)
#vetor de matriz inversa

solve(b)

#multiplicando matriz

mat1 = matrix(c(2,3,4,5), nr=2)
mat1


mat2 = matrix(c(6,7,8,9), nr=2)
mat1*mat2
mat1+mat2
mat1/mat2
mat1-mat2


#multiplicando matriz com vetor

x = c(1:4)
x
y = matrix(c(2,3,4,5), nr=2)
y
x*y

#nomeando matriz 
mat2 = matrix(c("Terra","Marte","Saturno","Neturno "), nr=2)
mat2

dimnames(mat2) = (list(c("linha1", "linha2"), c("coluna1", "coluna2")))
mat2
                   

#identificando linhas e colunas numa matriz
matrix(c(1,2,3,4), nr=2, nc=2,dimnames = list(c("linha1","linha2") , colnames = (c("coluna1","coluna2") )))


#combinando matrizes 
mat = matrix(c(2,3,4,5), nr =2)
mat

mat2 = matrix(c(1,4,7,9), nr=2)
mat2
cbind(mat1,mat2)
rbind(mat1,mat2)


#desconstruindo a matriz
c(mat1)
