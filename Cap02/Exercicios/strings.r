
install.packages("stringr")
library(stringr)
texto = "isso é uma string"
texto

x = as.character(3.14)
x
mode(x)

#concatenando string

nome = "natanael"; sobrenome="G" 
paste(nome,sobrenome)
cat(nome,sobrenome)

#formatando string
sprintf("A %s é %d","data science", 10)

#extraindo texto
texto = "isso é uma string"
substr(texto, start = 12, stop = 17)

#contando numero
nchar(texto)


#Alterando capitalização

tolower("Histograma e Elemento de Dados")
toupper("Histograma e Elemento de Dados")

#usando stringr

library(stringr)
#dividindo string em caracteres
strsplit("Isso é uma string", NULL)
strsplit("oiu é uma string","")


string1 ="eu sou uma string"
string2 =" sou a segunda string"
str_c(c(string1,string2), sep="")
str_count(string1,"s")
#localiza a primeira e a ultima posicao em que ocaracter aparece na string
str_locate_all(string2,"s")


#substitui a primeira ocorrencia de caracter
str_replace(string2, "\\s","")
replace(string1,"\\s","")

string1 = "17 jan 2011"
string2 = "jan 20"
padrao = "jan 20"

grepl(pattern = padrao, x = string1)
padrao = "jan20"
grepl(pattern = padrao, x = string2)

