
?pie
require(grDevices)
pie(rep(1, 24), col = rainbow(24), radius = 0.9)

pie.sales <- c(0.12, 0.3, 0.26, 0.16, 0.04, 0.12)
names(pie.sales) <- c("Blueberry", "Cherry",
                      "Apple", "Boston Cream", "Other", "Vanilla Cream")
pie(pie.sales) # default colours
pie(pie.sales, col = c("purple", "violetred1", "green3",
                       "cornsilk", "cyan", "white"))
pie(pie.sales, col = gray(seq(0.4, 1.0, length = 6)))
pie(pie.sales, density = 10, angle = 15 + 10 * 1:6)
pie(pie.sales, clockwise = TRUE, main = "pie(*, clockwise = TRUE)")
segments(0, 0, 0, 1, col = "red", lwd = 2)
text(0, 1, "init.angle = 90", col = "red")

n <- 200
pie(rep(1, n), labels = "", col = rainbow(n), border = NA,
    main = "pie(*, labels=\"\", col=rainbow(n), border=NA,..")

## Another case showing pie() is rather fun than science:
## (original by FinalBackwardsGlance on http://imgur.com/gallery/wWrpU4X)
pie(c(Sky = 78, "Sunny side of pyramid" = 17, "Shady side of pyramid" = 5),
    init.angle = 315, col = c("deepskyblue", "yellow", "yellow3"), border = FALSE)


getwd()
#fatias
fatias = c(40,20,40)

#paises
paises = c("Brasil","Argentina","chile")
#UNINDO PAISES E FATIAS
paises = paste(paises,fatias)
#Incluido
paises = paste(paises,"%", sep = "")
colors()

#construindo um gráfico
pie(fatias, labels = paises, col = c("blue","gainsboro","lemonchiffon4"), main = "Distribuição de vendas")


#Trabalhando com dataframe
?iris
attach(iris)
values = table(Species)
labels = paste(names(values))
pie(values, labels = paises, main = "Distribuição de Espécies")


#pie 3D
install.packages("plotrix")
library(plotrix)
pie3D(fatias, labels = paises, explode =  0.05, col =  c("steelblue1","tomato2","tan3"), main="Distribuição de Vendas")

library(plotrix)
pie3D(fatias, labels = paises, explode =  0.55, col =  c("steelblue1","tomato2","tan3"), main="Distribuição de Vendas")
