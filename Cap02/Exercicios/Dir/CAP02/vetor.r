
#vetor de stringS



str = c("A","B","C")
str

#vetor de float

float = c(1.66,2.66,3.44)
float

vetcomplex =  c(1+5i)
vetcomplex

vetorlogico = c(TRUE,FALSE, T,F)
vetorlogico

vetInt = c(1,2,34,76)
vetInt

typeof(vetInt)
mode(vetInt)

s = rep(1:5)
s

r = seq(1:10)
r
!is.vector(r)

vet = c(1:10)
vet
vet[8]
vet[1]


#vetor 
a = c("SA","RA")
a
a[1]
a[2]

#combinando vetores

v1 = c(2,3,1)
v2 = c("A","B","C")
c(v1,v2)

#operadores

y = c(1,4,8,5)
y

x = c(2,4,6,8)
x*5

v1 = c("A","B","C")
v2 = c(1,23,56,8)
c(v1,v2)


x+v2
x-v2
x*v2
x-v2

#soma e subtracao
x+y
x-y
x*y
x/y

alfa = c(10,10,30,10,10,10,10)
beta = c(1,2,3,4,5,6,7,8,9,10)

alfa+beta

vetnomeado = c("Rayssa","Freitas")
vetnomeado
names(vetnomeado) = c("Nome","Sobrenome")
vetnomeado
vetnomeado["Nome"]


matrix(c(1,2,3,4,5), nr = 3, byrow = F)

m1= matrix(c(1,2,3,4), nr = 2)


m2= matrix(c(1,2,3,4), nc = 2)

m2 
m1+m2

m1-m2
m1/m2
m1*m2
m = matriz[4:4] 
diag(m) 

t(m)
#matriz inversa
solve(m)

#multiplicando as matrizes

x= c(1:4)
x

y = matrix(c(2,4,6,8), nr = 2)
y*2
y/2
x+y
x-y


#multiplicando vetor



a = c(1,2,3,4,5)
b = c(7,8,9,10,11)
a+b
b-a
b**a #elevado

a*b
a/b
b/a

xuxu= matrix(c(1,2,3,4) , nr=2, nc=2)
xuxu
pera = matrix(c(5,6,7,8),  nr=2, nc =2)
pera

pera-xuxu
pera/xuxu
xuxu/pera
pera*xuxu

#multiplica matriz com vetor

y = c(1:4)
y
x = matrix(c(2,3,4,5), nr = 2)
x * y
x+y
x-y
x/y

#nomeando matrizes
mat = matrix(c(2,4,6,8), nr = 2)
mat
#operacao de matriz
x
s= mat - x
s
saida= mat*x
mat+x


mat1 = matrix(c(2,3,4,5), nr=2)
mat1
mat1*x
x
mat1

#linha e coluna para criar a matriz
#nomeando matriz
planetas = c("Terra","Marte","Saturno","Neturno")       
a= matrix(c(1,2,3,4), nr = 2,nc=2, dimnames = list( c("Linha1","Linha2"), c("Coluna 1","colunas2")))

b= matrix(c(5,6,7,8), nr = 2,nc=2, dimnames = list( c("Linha1","Linha2"), c("Coluna 1","colunas2")))
b
cbind(a,b)
rbind(a,b)
#combinando matriz
ma1 = matrix(c(2,4,6,8), nr=2)
ma2 = matrix(c(10,12,14,16),nr=2)
names(ma1) = c("col1","col2")



cbind(ma1,ma2)
rbind(ma1,ma2)
ma1


#desconstruindo matriz, ou seja, gerando um vetor
c(b)
