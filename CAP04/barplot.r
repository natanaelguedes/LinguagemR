

#numero de carros

dados = matrix(c(200,100,120,150,700,654), nr=3, byrow = T)
dados


#Nomeando linhas e colunas na matriz

colnames(dados)<- c("0","1-150","151-300", ">300")
rownames(dados)<- c("Jovem","Adulto","Idoso")
dados

#construindo a barplot
barplot(dados, beside = T)

#construindo um plot

barplot(dados, col = c("blue","tan3","seagreen3"))
barplot(dados)
#cores

colors()

barplot(dados, beside = T, col =  c("steelblue1","tan3","seagreen3","peachpuff1"))
barplot(t(dados), beside = T, col =  c("steelblue1","tan3","seagreen3","peachpuff1"))

legend("topright",pch=1, beside= T, col=c("steelblue1","tan3","seagreen3","pearchpuff1") )

barplot(t(dados),beside = T  , col = c("steelblue1","tan3","seagreen3","peachpuff1"))


