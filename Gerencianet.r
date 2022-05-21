install.packages("dplyr")
install.packages("sqldf")
library(dplyr)
library(sqldf)
install.packages("xlsx")
library("xlsx")

library(readxl)
charges <- read_excel("charges.xlsx")
View(charges)

library(RSQLite)

con <- dbConnect(RSQLite::SQLite(), dbname = "desafio-tecnico.db")

dbWriteTable(con, "iris", accounts)

charges$fraud="fraud " 
sqlite <- dbDriver("SQLite")
conn <- dbConnect(sqlite,"desafio-tecnico.db") 

dbListTables(conn,"accounts",accounts)
df




















 df = data.frame(charges) 
df$fraud<-1     
df
write.e


sqldf("select [Sepal.Width] from iris
      where
        [Sepal.Width]  >= 3.0")

library("xlsx")
# Write the first data set in a new workbook
write.xlsx(df, file = "charges.xlsx",
           sheetName = "First Sheet", append = FALSE)








con <- DBI::dbConnect(odbc::odbc(),
                      Driver   = "[your driver's name]",
                      Server   = "[your server's path]",
                      Database = "[your database's name]",
                      UID      = rstudioapi::askForPassword("Database user"),
                      PWD      = rstudioapi::askForPassword("Database password"),
                      Port     = 5432)
