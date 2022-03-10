
#strings

texto <- "texto"
texto

x = as.character(3.14)
x
class(x)
#convertendo strings
nome="Natan"; sobrenome="Guedes"
ya=paste(nome,sobrenome)
ya

#formatando saida

sprintf("o curso %s é %d", "do R",10)

#converter para caracter
t1 = "isso é uma string"
substr(t1, start=12,stop=17)

#numero em caracter
nchar(t1)

#alterando a capitalizacao
tolower("Rayssa é 10")
toupper("Rayssinha é 10")


library(stringr)
#divindo string em caracteres
strsplit("Histograma e dado",NULL)

str1 = c("ess a é uma string muito longa COM VARIOS CARACTER 
         ONDE É NECESSARIO USAR NO TEXTO")

str2 = c("precisando de alguem para trabalhar de acordo com as
         chaves automatica como publica e privadas")
#Adicionando strings
str_c(str1,str2)

#$localiza ultima posicao de caracter
str_locate_all(str1,"s")

#contar strings
str_count(str2, "s")
#substitui primeira ocorrencia de caracter
str_replace(str1, "\\s","aqs")

str_replace_all(str2,"\\s","ass")


#determinando padroes em strings
str1= "jan20"
str2 = "1 jan 20"
padrao ="jan20"
grep(pattern = padrao, x = str1)
padrao1="jan20"

grepl(pattern = padrao1, x =str2)

