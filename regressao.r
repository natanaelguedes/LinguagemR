 peso <- c(45,50,60,55,58,56,48,53)
 altura <- c(1.54,1.56,1.65,1.60,1.65,1.63,1.58,1.59)
 plot(peso, altura)
  lm(altura ~ peso)
  
   library(ggplot2) 
   ggplot(mapping = aes(peso, altura)) +
    geom_point() +
    geom_smooth(method = "lm")
   
   