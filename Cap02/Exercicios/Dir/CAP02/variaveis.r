
#definindo variavel EM R

getwd()
var1 = 100
var1
mode(var1)
help("mode")
sqrt(var1)


#variavel pode ser uma lista

var2 = c("primeiro","segundo","terceiro")
var2

var1 = 100
var2 = 100

var1==var2
sqrt(var1)
mode(var1)


var3 = c("primeiro","segundo","terceiro")
var3
mode(var3)


#uma variavel pode ser uma função
var4 = function(x){x+1}
var4(6)


#mudar o modo do dado
var5 = as.character(var1)
var5


typeof(var5)

#atribuindo valor
x = c(1,2,3)
x

c(1,2,3) = y
y
 assign("x",c(1,3,6))
x 

#um valor especifico
x[2]
#verificar objetos
objects()
ls()

rm(x)
x
