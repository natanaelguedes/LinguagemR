getwd()

install.packages("ggplot2")
library(ggplot2)
#plotando o gráfico básico com qplot
data(tips, package= "reshape2")
qplot(total_bill, tip, data=tips, geom="point")

#camada1
?NA

camada1 = geom_point(
  mapping = aes(x = total_bill, y= tip, color = sex),
  data =  tips, 
  size=3 )

ggplot() + camada1


?aes #ajuda
??aes #mais exemplos

help.search("aes")

#construindo modelo de regressão
modelo_base = lm(tip ~ total_bill, data = tips)
modelo_fit = data.frame(
  total_bill = tips$total_bill,
  predict(modelo_base, interval =  "confidence"))

head(modelo_fit)

#camada 2
camada2 = geom_line(
  mapping = aes(x = total_bill, y=fit),
                    data= modelo_fit,color = "darkred")          #REGRESSÃO POSITIVA
ggplot()+ camada1 + camada2



#camada3 

camada3 = geom_ribbon(
  mapping ~ aes(x ~ total_bill, ymin ~ lwr, ymax ~ upr), data = modelo_fit, 
  alpha = 0.3)

ggplot() + camada1 + camada2 + camada3
  
#versão otimizada

myplot = ggplot(tips, aes(x = total_bill, y= tip))+ geom_point(aes(color= sex)) + geom_smooth(method =  'lm' )
class(myplot)
print(myplot)


# scatterplot
#Dados
data = data.frame(cond = rep(c("Obs 1", "Obs 2"),
each= 10), var1 = 1:100 + rnorm(100, sd=9),
var2= 1:100 + rnorm(100, sd=16 ))

ggplot(data, aes(x = var1, y = var2))+ geom_point(shape = 1 )+
  geom_smooth(method= lm, color="red", se= F)

#barplot
data = data.frame(
grupo = c(grupo = c("A","B","C","D"), 
valor = c(33,62,56,67),
valor = c(33,62,56,67), num_obs = c(100,500,459,342)))
data = cumsum(data$num_obs) + 30 * c(0:(nrow(data)-1))


#massa de dados

data = data.frame(grupo = c("A","B","C","D"),
                  valor = c(33,62,56,67), num_obs = c(100, 500,459,342))

data$right = cumsum(data$num_obs)* 30 * c(0:(nrow(data)-1))
data$left = data$right - data$num_obs

#plot

ggplot(data, aes(ymin=0)) + geom_rect(aes(xmin = left, xmax = right, ymax= valor, colour= grupo, fill= grupo) ) + xlab("Número de observações")+ ylab("valor")

#usando  mtcars
head(mtcars)
#variavel continua à cor dos pontos
ggplot(data = mtcars, aes(x = disp, y = mpg)) + geom_point()

#mapear os tamanhos dos pontos à variável de interesse
#A legenda é inserida automaticamente
ggplot(mtcars, aes(x = disp, y = mpg, colour= cyl)) + geom_point()

#os geoms definem qual forma geometrica será utilizada para a visualização dos dados no gráficos
ggplot(mtcars,aes(x = as.factor(cyl), y = mpg)) + geom_boxplot()

#Histograma
ggplot(mtcars, aes(x = mpg), binwidth = 30)+ geom_histogram()


#gráfico de barras

ggplot(mtcars, aes(x = as.factor(cyl))) + geom_bar()


#Personalizando  os gráficos

ggplot(mtcars, aes(x = factor(cyl),y = mpg, colour = as.factor(cyl)))+geom_boxplot()

ggplot(mtcars, aes(x = as.factor(cyl), y=mpg))+ geom_boxplot(color = "blue", fill= "seagreen" )

#Podemos alterar os eixos

ggplot(mtcars, aes(x = mpg))+ geom_histogram()+ xlab("Milhas de galão")+ ylab("Frequencia")

#Legendas
ggplot(mtcars, aes(x = as.factor(cyl), fill= as.factor(cyl))) + geom_bar() +labs(fill= "cyl")

#trocando a posição da legenda
ggplot(mtcars, aes(x = as.factor(cyl), fill = as.factor(cyl ))) + geom_bar() + labs(fill= "cyl" ) + theme(legend.position =  "top" )

#sem legenda

ggplot(mtcars, aes(x = as.factor(cyl), fill= as.factor(cyl))) + geom_bar() + guides(fill= F)

#fACETS
ggplot(mtcars, aes(x = mpg, y = disp, colour=as.factor(cyl ))) + geom_point()+ facet_grid(~am, )

#plot diferentes juntos
install.packages("gridExtra")
library(gridExtra)

#Dataset diamonds
library(ggplot2)
data("diamonds")

# HistogramA plot1
plot1<- qplot(price, data = diamonds, binwidth= 1000)
plot1

#Scatterplot como plot2

plot2 = qplot(carat, price, data =  diamonds , binwidth=1000)
plot2

#COMBINA 2 PLOTS NA MESMA AREA
grid.arrange(plot1,plot2, ncol=1)

#grafico de densidade

boxplot(data = diamonds, aes(x = price, group = cut, fill= cut))+ geom_density(adjust = 1.5 )
  

ggplot(data = diamonds, aes(x = price, group=cut, fill=cut)) + geom_density(adjust= 1.5)    


ggplot(data =  diamonds, aes(x = price, group=cut, fill=cut))+ geom_density(adjust= 1.5, alpha= 0.2 )
ggplot(data =  diamonds, aes(x = price, group=cut, fill=cut))+ geom_density(adjust= 1.5, position = "fill" )


#parou em 0.35
                                                                          
ggplot(mtcars, aes(x = as.factor(cyl), y = mpg))+ geom_boxplot(color="blue", fill="seagreen4"  )  

#Trocando a posição dA legenda
ggplot(mtcars, aes(x = as.factor(cyl), fill= as.factor(cyl ))) + geom_bar()+ labs(fill= "cyl" ) + geom_bar() + theme(legend.position =  "top")


#sem legenda

#fACETS
ggplot(mtcars,aes(x = mpg, y = disp, colour= as.factor(cyl)))+ geom_point()+facet_grid(am~.)
ggplot(mtcars,aes(x = mpg, y = disp, colour= as.factor(cyl)))+ geom_point()+facet_grid(.~am)

 
