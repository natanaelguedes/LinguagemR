
getwd()

install.packages("data.table")
library("data.table")

#criando dois vetores

numeracao = c(1,2,3) 
vec2 = c("vermelho","verde","Marrom","Laranja")

 

#criando datatable

dt1 = data.table(numeracao, vec2)
dt1
class(dt1)

#slicing do data.table
dt2 = data.table(A = 1:9, B= c("Z","Q","W"), c= rnorm(9), D = TRUE)
dt2
dt2[3:5,] # pega a linha 3 e 5
dt2[, .(B, C)]

#aplicando a função ao data.table
dt2[, .(total = sum(A), mean = mean(C))] #PEGA TODAS AS LINHAS
dt2[3:5, .(total = sum(A), mean = mean(C))] # PEGA AS LINHAS 3 e 5
dt2[, plot(A,C)]
dt2[, .(MySum = sum(A)), by = .(Grp = A%%2)]

#DEFININDO GRUPO 
dt3 <- data.table(B = c("a" , "b" , "c" , "d"   , "e"  , "a"  , "b"  , "c" ,"d" ,  "e"),
                 val = as.integer(c(6:10, 1:5)))
dt3
 #operações com o data table
dt4 = data.table(A = rep(letters[2:1], each = 4L), B =  rep(1:4, each= 2L), c = sample(8))
dt4

newdta = dt4[, sum(B), by = A][order(A)]
newdta

#with Iris
dt = as.data.table(iris)
dt

dt[, .(Sepal.Length = median(Sepal.Length),
       Sepal.Width = median(Sepal.Width),
       Petal.Length  = median(Sepal.Length),
       Petal.Width = median(Petal.Width), by ~ Species
       ) ] #by = agrupado pela species



# O parâmetro .SD significa Subset Data e um subset é criado considerando a coluna Species e depois 
# é calculda a mediana. O resultado deve ser igual ao comando anterior. 
# O .SD faz parte da notação do pacote data.table.
dt5[, lapply(.SD, median), by = Species]












