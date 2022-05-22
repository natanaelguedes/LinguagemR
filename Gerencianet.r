install.packages("dplyr")
install.packages("sqldf")
library(dplyr)
library(sqldf)
install.packages("xlsx")
library("xlsx")
 

library(RSQLite)

con <- dbConnect(RSQLite::SQLite(), dbname = "desafio-tecnico.db")
con
dbListTables(con)
dbListTables(con)
dbReadTable(con)
dbListObjects(con)
dbListTables(conn)
dbListFields(con, "mtcars")

library(sqldf)

library(dplyr)
mydb <- src_sqlite("desafio-tecnico.db")
src_tbls(mydb)

 

dbExecute(con, "SELECT
    P.id,
    P.account_number, 
    P.status 
FROM
    charges  P
WHERE
    P.id IN
    (
        SELECT
            C.id
        FROM
            accounts   C
        WHERE
            P.id = C.id
    )")


dbListTables(con) 


dbGetQuery(con, "SELECT  P.id,P.account_number, P.status FROM    charges  P WHERE    P.id IN
( SELECT    C.id      FROM    accounts   C        WHERE            P.id = C.id    )")





data1 <- read.csv("D://sqlite//mycsv.csv", sep = ";", header=TRUE, stringsAsFactors=FALSE)
data1
data1$fraud[data1$status== "paid"] <- 0
data1$fraud[data1$status== "unpaid"] <- 1

write.csv(data1,"D://sqlite//Resultadocsv.csv", row.names = FALSE)
