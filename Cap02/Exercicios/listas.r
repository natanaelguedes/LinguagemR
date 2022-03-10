

#criando listas

#listas de strings

listasdecaracteres = list("A","B","C")
listasdecaracteres

lista2 = list(c("a","b"),"c","d")
lista2

caracteres = list(matrix(c("A","A","A","A"), nr = 2), "B","C")
caracteres

#lista de numeros inteiros
lst = list(2,3,4)
lst

#listas de float
float = list(4.23, 6.44)
float

#numeros complexos

listac= list(5.2+2i,4.8+2i)
listac

#valores logicos

logic = list(T,F,T,F)
logic

lst = list(1:10, c("zico","ronaldo","garrincha"), rnorm(10))
lst

lst[1]
lst[c(2,1)]
lst[2]
lst[2][1]

names(lst) = c("inteiros","caracteres","numericos")
lst

lst$inteiros
lst$caracteres
lst$numericos


#verificar comprimento da lista

length(lst)

#extrair elemento
lst$caracteres[2]

#mode dos elementos
mode(lst$caracteres)
mode(lst$inteiros)

#combinando 2 listas

l3 = c(lista1,lista2)
l3

#transforma em vetor em lista

v = c(1:5)
v
l = as.list(v)
l

#unindo 2 elementos em uma lista
m = matrix(1:4, nr=2)
m
v = c(1:4)
v
lst = list(mat,v)
lst



