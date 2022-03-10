 
writeLines('PATH="${RTOOLS40_HOME}\\usr\\bin;${PATH}"', con = "~/.Renviron")
Sys.which("make")
install.packages("rjava", type = "source")
Sys.which("make")

install.packages("rJava")
install.packages("xlsx")
install.packages("readxl")
install.packages("gdata")
install.packages("XLConnect ")
library(rJava)

excel_sheets("CAP05/UrbanPop.xlsx") 
#importação  e manipulação de planilhas excel parte 1/2