

install.packages("readr")
install.packages("dplyr")
install.packages("tidyr")
library(readr)
library(dplyr)
library(tidyr)
sono_df = read.csv("Cap07/sono.csv")
sono_df
View(sono_df)
head(sono_df)
class(sono_df)
str(sono)

glimpse(sono_df)

glimpse(mutate(sono_df, peso_libras = sono_total / 0.45359217))
        
        
#contagem e histograma
count(sono_df,cidade)
hist(sono_df$sono_total, main = "meu histograma")

#retirar amostra
sample_n(data, size = 10)

#select 
sono_df <- select(sono_df,nome, sono_total)
sono_df
head(sono_df)
class(sono_df)
select(sono_df,nome)
select(sono_df,nome:cidade)


#filter
filter(sono_df,sono_total>=16)
filter(sono_df, sono_total >=17 , peso>=80)
filter(sono_df, cidade %in% c("Recife","Curitiba"))


#arrange

sono_df%>% arrange(cidade) %>% head 
sono_df%>%arrange(cidade) %>% select(nome,cidade,sono_total) %>% arrange(cidade,sono_total) %>% head

#mutate
head(sono_df)
sono_df%>%mutate(sono_indice - sono_total/peso, peso_libras = peso / 0.45359397) %>% head


#sumarize
sono_df %>% summarise(media_sono = mean(sono_total),min_sono = min(sono_total), max(sono_total), total = n())

#group by
#continuar parte 5/5


# Operador %>%

head(select(sono_df,nome,sono_total))

sono_df %>% select(sono_df,nome,sono_total)%>%head

sono_df %>% 
  mutate(novo_indice = round(sono_total *peso)) %>%
  arrange(desc(novo_indice)) %>%
          select(cidade,novo_indice)
 

sono_df %>% group_by(cidade) %>% 
  summarise(media_sono = min(sono_total),
            max_sono = max(sono_total), total = n())

sono_df = select(sono_df,nome,sono_total)
sono_df

#mutate
head(sono_df)
sono_df %>% mutate(sono_indice = sono_total/ sono$peso) %>% head
head(sono_df)
