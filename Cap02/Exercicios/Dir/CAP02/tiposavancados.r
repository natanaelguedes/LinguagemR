
#vetor uma dimensao e  um tipo de dado
vetor2 = c(1:20)
vetor2
length(vetor2)
mode(vetor2)
class(vetor2)
typeof(vetor2)


#matrix 1 dimensao e 1 tipo de dado



matriz = matrix(1:20, nr=2)
matriz
length(matriz)
class(matriz)
typeof(matriz)

#dois ou tres elementos e 1 tipo de dado
arr = array(1:5, dim = c(1,2,3))
arr
length(arr)
class(arr)
typeof(arr)
 
#dataframe uma,duas , tres ou mais dimensoes

View(iris)
length(iris)
mode(iris)
class(iris)
typeof(iris)

a = matrix(c(2:8))
b = matrix(c(3:9))
lista1 = list(a = a, b = b)
lista1

#funcoes 
func = function(x){
  vet =x +x 
return(vet)
  }

func(2)
class(func)

objects()
ls()
rm(arr)
ls()


View(iris)
length(iris)
mode(iris)
class(iris)
typeof(iris)

matriz = matrix(c(1:30))
#listas
l1 = list(a = matriz, b = vetor2)
l1
length(l1)
mode(l1)
class(l1)
typeof(l1)


#listas sao colecoes de objetos em R

lista1  = list(a = matriz, b=vetor2)
lista1
length(lista1)
mode(lista1)
class(lista1)
typeof(lista1)


#função sao vistas como objetos em R
func = function(x){ var= x+x} return(var)
func(5)
class(func)

#removendo objetos
objects()
rm(a,func)


