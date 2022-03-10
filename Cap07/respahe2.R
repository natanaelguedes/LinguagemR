install.packages("reshape2")
library(reshape2)
df = data.frame(nome = c("Zico","Pele"), chuteira= c(40,42),idade = c(34,NA), peso = c(93,NA),altura = c(175,178))

df
#derretendo o data frame
df_wide = melt(df, c("nome","chuteira"))
df_wide
#removendo usando na.rm e na.exclude()
df_wide = melt(df, c("nome","chuteira"), na.rm = T)
df_wide
na.exclude(df_wide)

#esticando o dataframe
dcast(df_wide, formula = chuteira + nome ~ variable)
dcast(df_wide, formula =  nome + chuteira ~ variable)
dcast(df_wide, formula =  nome ~ variable)
dcast(df_wide, formula =... ~ variable) #os tres pontinhos indica uma relaçao de todas tem relação com a VARIABLE

#aplicando o reshape2
names(airquality) = tolower(names(airquality))
head(airquality)
dim(airquality)  #153 LINHAS E 6 COLUNAS

#Funçao melt() - wide

?melt
df_wide = melt(airquality, id.vars = c("month","day"))
head(df_wide)

#funcao dcast() - long
df_long = dcast(df_wide, month+day ~ variable)
df_long

head(df_long)
head(airquality)
