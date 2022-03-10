
getwd()

#criando um data.frame

df = data.frame()
class(df)
df

#criando vetores vazios


nome = character()
idade = numeric()
altura = numeric()
codigo = integer()


df = data.frame(c(nome,idade,altura,codigo))
df

#criando vetores
pais = c("Portugal","Inglaterra","Irlanda","Egito","Brasil")
nome = c("Bruno","Tiago","Amanda","Bianca","Marta")
altura = c(1.88,2.44,5.66,5.77,65.43)
codigo = c(2134,4322,5434,6743,5432)

#preenchendo vetores
pesquisa = data.frame(pais,nome,altura,codigo)
pesquisa

#adicionando novo vetor a um dataframe existente

olhos = c("verde","azul","azul","castanho","verde")
pesq = cbind(pesquisa,olhos)
pesq


#informaçoes do dataframe
str(pesq)
dim(pesq)
length(pesq)

#obtendo um valor de um dataframe

pesq$pais
pesq$nome


#extraindo valor
pesq[1,1]
pesq[1,2]


#numero de linhas e colunas

nrow(pesquisa)
ncol(pesquisa)

#pesquisa elemento do dataframe
head(pesq)
head(mtcars)

#ultimo elementos da dataframe
tail(pesq)
tail(mtcars)

#dataframe built-in do R
mtcars
?mtcars

pesq[altura> 1.88,]
pesq[altura<5.77, c("codigo","olhos","altura")]

#dataframe nomeado

names(pesq) = c("Pais","Nome","Altura","Codigo","Olhos")
pesq
rownames(pesq) = c("var1","var2","var3","var4","var5")
colnames(pesq) = c("obs1","obs2","obs3","obs4","obs5")
pesq
getwd()
pacientes = data.frame(read.csv(file = "pacientes.csv", header = T, sep = ","))
pacientes


#visualizando dataset
pacientes$Diabete
pacientes$Status
pacientes$Idade


#histograma

hist(pacientes$Idade)

#combinando dataframe
dfFinal = merge(pesq,pacientes)
dfFinal
