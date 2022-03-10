 aceleracaoDoCarro <- c(10,20,30,40,50,60,70,80,96)
 MaiorOgastoDeGasolina <- c(50,60,70,80,90,100,110,120,130)
 plot(aceleracaoDoCarro, MaiorOgastoDeGasolina)
  lm(aceleracaoDoCarro ~ MaiorOgastoDeGasolina)
  
   library(ggplot2) 
   ggplot(mapping = aes(aceleracaoDoCarro, MaiorOgastoDeGasolina)) +
    geom_point() +
    geom_smooth(method = "lm")
   
   summary(aceleracaoDoCarro   )
   summary(MaiorOgastoDeGasolina )
   
