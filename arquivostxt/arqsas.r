
iris <- reshape(iris,varying = 1:4,v.names = "Medidas",timevar = "Dimensoes", times = names(iris)[1:4], idvar = "ID", direction="long")

iris


vendas -<read.sas

format("July 17, 2017", format = "%B %d, %Y")

install.packages("haven")
plot(iris)
library(haven)
s  <- read_sas("music.sas7bdat")
head(s)
typeof(s)
install.packages("DBI")








lista1 <- list(a=(1:20),  b=(45:77))

lista1
sapply(lista1,sum)





sa <-read.csv("dfcad.csv")
head(sa)
