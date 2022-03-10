getwd()

#instalar e carregar o pacote
install.packages("xplot")
install.packages("lattice")
library(lattice)

#scatterplot com lattice
xyplot(data = iris, groups=Species, Sepal.Length ~ Petal.Length)

?Titanic

barchart(Class~Freq| Sex + Age, data =  as.data.frame( Titanic), groups = Survived, stack = T, layout = c(4,1), auto.key = list( title = "Dados titanic", columns = 2))

barchart(Class~Freq| Sex + Age, data= as.data.frame(Titanic ), groups = Survived, stack= T, layout = c(4,1), auto.key = list(title= "Dados Titanic", columns=2 ),scales = list(x = "free"))

#contagem de elementos

PetalLengt <- equal.count(iris$Petal.Length, 4)
PetalLengt

#scatterPlot
?xyplot
plot(data = iris, groups = Species, Sepal.Length~Petal.Length)

PetalLength <- equal.count(iris$Petal.Length, 4)
PetalLength

#histograma

histogram(~Sepal.Length | Species, xlab =  "", data =  iris, layout=c(3,1), type = "density", main="Histograma Lattice", sub="Iris Dataset,Sepal Length")

library(car)
?scatter.smooth()

barchart(Class ~ Freq | Sex + Age, data = as.data.frame(Titanic),
         groups = Survived, stack = T, layout = c(4, 1),
         auto.key = list(title = "Dados Titanic", columns = 2))

barchart(Class ~ Freq | Sex + Age, data = as.data.frame(Titanic),
         groups = Survived, stack = T, layout = c(4, 1),
         auto.key = list(title = "Dados Titanic", columns = 2),
         scales = list(x = "free"))


# Contagem de elementos
PetalLength <- equal.count(iris$Petal.Length, 4)
PetalLength

# ScatterPlots
xyplot(Sepal.Length~Sepal.Width | PetalLength, data = iris)


xyplot(Sepal.Length~Sepal.Width | PetalLength, data = iris,
       panel = function(...) {
         panel.grid(h = -1, v = -1, col.line = "skyblue")
         panel.xyplot(...)})


xyplot(Sepal.Length~Sepal.Width | PetalLength, data = iris,
       panel = function(x,y,...) {
         panel.xyplot(x,y,...)
         mylm <- lm(y~x)
         panel.abline(mylm)})


histogram(~Sepal.Length | Species, xlab = "",
          data = iris, layout=c(3,1), type = "density",
          main = "Histograma Lattice", sub = "Iris Dataset, Sepal Length")


# DistribuiÃ§Ã£o dos dados
qqmath(~ Sepal.Length | Species, data = iris, distribution = qunif)


# Boxplot
bwplot(Species~Sepal.Length, data = iris)


# ViolinPlot
bwplot(Species~Sepal.Length, data = iris,
       panel = panel.violin)



