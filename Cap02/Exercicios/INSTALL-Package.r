 

#imprime na tela

plot(1:25)

#instalar pacotes

install.packages("randomForest")
install.packages("ggplot2")
install.packages("dplyr")
install.packages("devtools")


#carrega pacote 
library(ggplot2)

#descarregar pacote
detach(package:ggplot2)


#se nao souber o que a funcao faz

help(mean)
?mean

#para mais informacoes usa-se pacote sos
install.packages("sos")
library(sos)
findFn("fread")
