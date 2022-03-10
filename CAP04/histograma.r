

# Obs: Caso tenha problemas com a acentuação, consulte este link:
# https://support.rstudio.com/hc/en-us/articles/200532197-Character-Encoding

# Configurando o diretório de trabalho
# Coloque entre aspas o diretório de trabalho que você está usando no seu computador
# Não use diretórios com espaço no nome
setwd("C:/FCD/BigDataRAzure/Cap04")
getwd()

# Definindo os dados
?cars
View(cars)
dados = cars$speed
View(cars)

# Construindo um histograma
?hist
hist(dados, main = "Histograma de carros")
?hist

op <- par(mfrow = c(2, 2))
hist(islands)
utils::str(hist(islands, col = "gray", labels = TRUE))

hist(sqrt(islands), breaks = 12, col = "lightblue", border = "pink")
##-- For non-equidistant breaks, counts should NOT be graphed unscaled:
r <- hist(sqrt(islands), breaks = c(4*0:5, 10*3:5, 70, 100, 140),
          col = "blue1")
text(r$mids, r$density, r$counts, adj = c(.5, -.5), col = "blue3")
sapply(r[2:3], sum)
sum(r$density * diff(r$breaks)) # == 1
lines(r, lty = 3, border = "purple") # -> lines.histogram(*)
par(op)

require(utils) # for str
str(hist(islands, breaks = 12, plot =  FALSE)) #-> 10 (~= 12) breaks
str(hist(islands, breaks = c(12,20,36,80,200,1000,17000), plot = FALSE))

hist(islands, breaks = c(12,20,36,80,200,1000,17000), freq = TRUE,
     main = "WRONG histogram") # and warning

## Extreme outliers; the "FD" rule would take very large number of 'breaks':
XXL <- c(1:9, c(-1,1)*1e300)
hh <- hist(XXL, "FD") # did not work in R <= 3.4.1; now gives warning
## pretty() determines how many counts are used (platform dependently!):
length(hh$breaks) ## typically 1 million -- though 1e6 was "a suggestion only"

require(stats)
set.seed(14)
x <- rchisq(100, df = 4)

## Comparing data with a model distribution should be done with qqplot()!
qqplot(x, qchisq(ppoints(x), df = 4)); abline(0, 1, col = 2, lty = 2)

## if you really insist on using hist() ... :
hist(x, freq = FALSE, ylim = c(0, 0.2))
curve(dchisq(x, df = 4), col = 2, lty = 2, lwd = 2, add = TRUE)


# Conforme consta no help, o parâmetro breaks pode ser um dos itens abaixo:
# Um vetor para os pontos de quebra entre as células do histograma
# Uma função para calcular o vetor de breakpoints
# Um único número que representa o número de células para o histograma
# Uma cadeia de caracteres que nomeia um algoritmo para calcular o número de células 
# Uma função para calcular o número de células.
hist(dados, breaks = 10, main = "Temperaturas", xlab = "Temperaturas")
hist(dados, labels = T, breaks = c(1999,2000,2001,2002,2003,2004,2005,2006,2007,2008,2009,2010,2011,2012,2013,2014,2015,2016,2017,2018,2019), main = "Histograma das Velocidades")
hist(dados, labels = T, breaks = 10, main = "Histograma das Velocidades")
hist(dados, labels = T, ylim = c(0,10), breaks = 10, main = "Histograma das Velocidades")


# Adicionando linhas ao histograma
grafico <- hist(dados, breaks = 10, main = "Histograma das Velocidades")

xaxis = seq(min(dados), max(dados), length = 10)
yaxis = dnorm(xaxis, mean = mean(dados), sd = sd(dados))
yaxis = yaxis*diff(grafico$mids)*length(dados)

lines(xaxis, yaxis, col = "red")

Ano <- airquality$Temp
hist(Ano)

hist(Ano,
     main="Maximum daily temperature at La Guardia Airport",
     xlab=c(1999,2000,1888,2001),
     xlim=c(1999,2019),
     col="darkmagenta",
     freq=FALSE
)

h <- hist(Ano,ylim=c(0,40))
text(h$mids,h$counts,labels=h$counts, adj=c(0.5, -0.5))






altura = c(1.3, 1.33, 1.4, 1.42, 1.45, 1.5, 1.5, 1.52, 1.55, 1.56, 1.58, 1.6, 1.62, 1.64, 1.65, 1.67, 1.68, 1.68, 1.7, 1.72, 1.72, 1.74, 1.8, 1.83, 1.85)
altura
freq= table(altura)
freq





barplot(freq, ylab= "Frequência", xlab="Altura dos alunos")
hist(altura)
hist(altura,  
     main = "Altura dos alunos do Ensino Médio",
     xlab = "Altura dos alunos", ylab = "Freq. Absoluta")



 



hist(altura,  
     main = "Altura dos alunos do 1º ano do Ensino Médio", 
     xlab = "Altura dos alunos", ylab = "Freq. Absoluta", 
     col = c("violet"), 
     border = FALSE, 
     xlim = c(1.2,2), ylim = c(0,10),
     labels = TRUE)