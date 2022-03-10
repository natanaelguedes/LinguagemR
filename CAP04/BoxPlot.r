
getwd()

?boxplot
?sleep

#permitir utilizar as  colunas sem especificar o nome do dataset
attach(sleep)


#construir o bloxplot
sleepboxplot = boxplot(data = sleep, extra~group,main="Duração do sono", col.main="red", ylab =  "Horas", xlab = "Droga")

#calculo da média
medias = by(extra,group,mean)
medias

#adicionar medias ao grafico
points(medias, col = "red")

#boxplot horizontal

horizontalboxplot = boxplot(data = sleep, extra~group, ylab = "", xlab = "", horizontal =  T)
horizontalboxplot
horizontalboxplot2 = boxplot(data = sleep ,extra ~ group , ylab = "", xlab = "", horizontal =  T, col = c("red","blue"))  
horizontalboxplot2
