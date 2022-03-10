

#vetor

#1 dimensao 1 tipo de dados

vetor = c(1:20)
vetor
length(vetor)
mode(vetor)
class(vetor)
typeof(vetor)


#Matriz possui 2 dimensoes e 1 tipo de dado

mtx = matrix(1:20, nr=2)
mtx
length(mtx)
mode(mtx)
class(mtx)
typeof(mtx)

#array 2 ou mais dimensoes e 1 tipo de dado

array = array(3:5, dim = c(3,3,10))
array


#dataframe mais de 3 dimensoes

array = array(1:3, dim = c(3,3,10)) 
array
length(array)
mode(array)
class(array)
typeof(array)

#dataframe mais de dois tipos diferentes

View(iris)
length(iris)
class(iris)
typeof(iris)

#listas
matriz1 = matrix(1:30)
matriz2 = matrix(2:30)
lista1 = list(a = matriz1, b = matriz2)
lista1
length(lista1)
mode(lista1)
class(lista1)
typeof(lista1)


#funçoes

func1 = function(x){
  var1 = x*x
  return(var1)
}

func1(2)
class(func1)

#removendo objetos
objects()
rm(array,func1)
objects()
