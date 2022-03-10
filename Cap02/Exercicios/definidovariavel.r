#criando variavel
var1 = 100
var1
mode(var1)
help("mode")
sqrt(var1)

#atribuindo valor de uma variavel a outra

 var2 = var1
var2
var1
mode(var2)
typeof(var2)
help("typeof")

#variavel pode ser uma lista de elementos
var3 = c("primeiro","segundo","terceiro")
var3

#variavel pode ser uma funcao
funcao = function(x){x+3}
funcao
funcao(2)
mode(funcao)


#mudando o valor do dado

var5 = as.character(var3)
var5
mode(var5)


#atribuindo valor a objeto
x = c(1,2,3)
x
c(1,2,3) - y
y

#sobrescreve x
assign("x", c(6.3,4,-2))

x

#busca posição especifica
x[1]

#verifica objetos
ls()
objects()

#remover objetos
rm(x)
x

