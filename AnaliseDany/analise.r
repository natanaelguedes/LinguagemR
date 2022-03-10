 

# Plot the chart.
pie(x, labels = piepercent, main = "Reuniões do PMA",col = rainbow(length(x)))
legend("topright", c("1999-2011","2012-2018","2019"), cex = 0.8,
       fill = rainbow(length(x)))

#o código acima é de um gráfico e o de baixo é outro gráfico

par(mfrow=c(1,0), mar=c(6, 6, 1, 1), mgp=c(0,4,0))
heritage <- c(62,16, 10)
colors <- c("red", "chartreuse", "blue");
xlab = "Reuniões";
bp <- barplot (heritage, main="Reuniões do PMA", ylab=NA, ylim=c(0,120), las=1, col=colors, names=xlab)
mgp.axis(2, at=c(0, 20, 40), las=2)
labels <-c("62%","33%", "5%" )
text(bp, heritage+2, labels, cex=1, pos=3) 
legend("top", c("1999-2011","2012-2018","2019"), cex = 0.8,
       fill = rainbow(length(heritage)))

?legend



dados <- read.table(text='8 5 4 6 4 4 2
41 58 15 19 19 33 30
60 59 67 54 49 59 56
43 30 66 73 80 56 64', header=F, sep=' ')

fator_tecnologico_labels <- c(
  "Facilidade de testar e de ser avaliado\n por usuários de um modo geral",
  "Utilização de desenvolvimento e de qualidade\n bem definidos por parte do fabricante",
  "Compatibilidade com a infraestrutura existente,\n com os requisitos/necessidades/demandas, e/ou com a tecnologia\n em vigor",
  "Facilidade de entender, utilizar\n e/ou adaptar",
  "Vantagem(ns) em relação a custos com hardware,\n requisitos mínimos menos exigentes, custos com licença ou suporte, etc",
  "Maior eficiência em relação à solução,\n livre ou não, utilizada atualmente",
  "Maior confiabilidade em relação\n à solução, livre ou não, utilizada\n atualmente"  
)

# Até aqui tu tem.
dados <- read.table(text='8 5 4 6 4 4 2
41 58 15 19 19 33 30
60 59 67 54 49 59 56
43 30 66 73 80 56 64', header=F, sep=' ')
dados <- cbind(dados, Label=c('Nenhuma influência', 'Pouca influência', 'Influência considerável', 'Muita influência')) 

dados <- reshape(dados, varying = list(c('V1', 'V2', 'V3', 'V4', 'V5', 'V6', 'V7')), direction='long', idvar='Label', times=fator_tecnologico_labels) # Para usar o ggplot2 os dados precisam estar nesse formato.

require(ggplot2)

grafico <- ggplot(aes(x=time, y=V1, fill=Label), data=dados) + # Informa os dados
  geom_bar(stat='identity', position='dodge') + # Informa que tu quer um gráfico de barras
  coord_flip() + # Inverte os eixos X e Y
  xlab('Frequencia') + # Coloca titulo no eixo X
  ylab('Fatores') +  # Coloca titulo do eixo Y
  ggtitle("Na sua opinião, em que grau estes fatores influenciam\n a adoção de software livre do ponto de vista tecnológico?") + # Coloca titulo no grafico
  scale_fill_hue('Legenda') # Coloca titulo na legenda

grafico


df <- data.frame(tratamento = c("a", "b", "c"),
                 tamanho = c(1.3, 1.9, 3.2))

# Boxplot
ggplot(df, aes(y = tamanho, x = tratamento)) +
  geom_bar(stat = "identity")
=======
heritage <- c(10,16, 62)
colors <- c("royalblue4", "chartreuse", "cornflowerblue");
xlab = "Reuniões";
bp <- barplot (heritage, main="Reuniões do PMA", ylab=NA, ylim=c(0,120), las=1, col=colors, names=xlab)
mgp.axis(2, at=c(0, 20, 40), las=2)
labels <-c("5%\n(n=1)","33%\n(n=7)", "62%\n(n=13)" )
text(bp, heritage+2, labels, cex=1, pos=3) 
>>>>>>> ce4f00d43e1fc577e4d9c798ae8afff428af819c
