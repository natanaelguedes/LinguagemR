getwd()

#define os dados

set.seed(67)
x = rnorm(10,6,7)
y = rpois(10,7)
z = rnorm(10,6,7)
t = rpois(10,9)

#criar o plot

plot(x,y, col = 123, pch= 10, main = "Multi Scatterplot", col.main="red", cex.main=1.5, xlab = "Variavel independente", ylab = "variável dependente")

#adiciona outros dados
points(z,t, col= "blue", pch=4)

#adiciona outros dados
points(y, t, col=777, pch=9)


#cria legenda

legend(-6.5,9, legend = c("Nivel 1","Nivel 2","Nivel 3"), col =  c(123,"blue", 777), pch= c(10,4,9), cex =  0.69, bty =  "n")


