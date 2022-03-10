

#Muitas das técnicas abaixo podem ser realizadas com a aplicação das funções:
#subset(), merge(),plyr::arrange()
#para conhecer estas notações é fundamental  para compreender como gerar subconjuntos de dados

#vetores
x = c("A","E","D","B","C")
x[]#retorna todos os conjuntos de dados
x

#indices positivos - Elementos em posições especificas
x[c(1,3)] #busca apenas as colunas 1 e 3  QUE SAO      A , D
x[c(1,1)] # busca a coluna 1 e retorna ela mesma      A ,A
x[order(x)]


#vetor logico para gerar subseting

#indices negativos - ignora elementos em posições especificas
x[-c(1,3)] #retorne tudo menos a coluna 1 e 3  Retorna as colunas E, B , C  ENTAO OMITE AS LETRAS a , D
x[-c(1,4)] #retorne tudo menos a COLUNA 1 E 4 Retorna as colunas E, D , C


#vetores logicos
#1 ELEMENTO É  A LETRA A , ENTÃO RETORNA a, segundo elemento é a letra E então omite a letra E, 
#O TERCEIRO ELEMENTO É A LETRA D ENTAO RETORNA D, OMITE A LETRA B , RETORNA A LETRA C
x[c(TRUE, FALSE)] 
x[c(TRUE,FALSE,TRUE,FALSE)] # A , D , C ,    
#explicacao: 1 elemento é TRUE ENTAO EXIBE A LETRA A,
#NAO EXIBE A LETRA E  , EXIBE A LETRA D, NÃO EXIBE A LETRA B, EXIBE A LETRA C


#VETOR DE CAracteres 
x = c("A","B","C","D")
y = setNames(x, letters[1:4])
y

y[(c("d","c","a"))]
y[(c("a","a","a"))]

#matrizes
mtx = matrix(1:9, nr=3)
colnames(mtx) = c("A","B","C")
mtx

mtx[1:2,]
mtx[1:2,2:3]


#Função outer() permite em uma Matriz se comporta como vetores individuais
?outer
#neste comando outer (1:5,1:5) 
#este numeros que estão entre os parenteses 
#são dois vetores e este FUN = "PASTE" 
#COLA OS DOIS VETORES FORMANDO UM SÓ

vals = outer(1:5, 1:5, FUN = "paste", sep=",")
vals
vals[c(4,15)]

#DATAFRAME 
df = data.frame(x = 1:3, y = 3:1, z = letters[1:3])
df

df$x #retorna apenas a coluna x
df[df$x ==2 ,] #chama os  elemento
#dataframe cuja linha tenha o elemento 2 
# o parametro depois da virgula indica
#que estou  pegando  todas as colunas

df[c(1,3),]
df[c("x", "z")]
df[, c("x","z")]
str(df["x"])
str(df[,"x"])

#removendo colunas de um dataframe

df = data.frame(x = 1:3, y=3:1, z = letters[1:3])
df

df$z <- NULL #remove a coluna z
df

df['z'] = c("a","b","c")
df$z 
df

#OPERADORES [] [{}] E $

a = list(x = list(b= list(d = 1)))
a[1]

a[[1]]
a[1][[1]]
a[["a"]]

b = list(a = list(b = list(c = list(d = 1))))
b
b[[c("a","b","c","d")]]
b[["a"]][["b"]][["c"]][["d"]]


var = "cyl"
var
mtcars$var
View(mtcars)
mtcars[[var]]
x <- list(abc = 1)
x$a
x[["a"]]
x[["abc"]]
#subsetting e atribuição
x = 1:5
x

#OS elementos do vetor 1 e 2 é
#alterado para 2 e 3
x[(c(1,2))] <- 2:3 
x
# o código abaixo exibe os mesmos
#valores sendo que na ordem inversa
x[-1] <- 4:1
x
mtcars
View(mtcars)
head(mtcars)
#o codigo abaixo é subsetting
mtcars[] <- lapply(mtcars,as.integer)
mtcars

#isto nao é subsetting
mtcars <- lapply(mtcars,as.integer)
mtcars
#Lookup tables
x <- c("m","f","u","f","f","m","m")
lookup = c(m = "male", f = "Female", u=NA)
lookup[x]
unname(lookup[x])

#Lookup tables
#o código abaixo quer dizer o seguinte: se o vetor de 1  a 10 divido por 2 é igual a 0

x1 <- 1:10%% 2 == 0
x1

y=which(x1) #essa linha mostra quais os valores que são dividiveis por 2 com o resto 0
y

y1 <- 1:10 %%5 ==0
y1
x=which(y1) #which serve para exibir os indices
x
#o codigo abaixo retira a intercessão   entre y e y1
intersect(x,y)

x1 & y1
#o código abaixo tira a uniao entre x e y
union(x,y) 

#esse conjunto abaixo retira diferença entre o x e o y
#o codigo abaixo é retirar 
#a diferença entre os dois conjuntos (x , y )

setdiff(x,y)



