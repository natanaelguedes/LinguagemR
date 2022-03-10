install.packages("jsonlite", type = "source")
library(jsonlite)
all.equal(mtcars, fromJSON(toJSON(mtcars)))
mt
#https://translate.google.com/translate?hl=pt-BR&sl=en&u=https://cran.r-project.org/web/packages/jsonlite/vignettes/json-aaquickstart.html&prev=search&pto=aue
install.packages("rlang")


install.packages("devtools")


# Read a JSON file
install.packages("rjson")
# Load the package required to read JSON files.
library("rjson")

# Give the input file name to the function.
result <- fromJSON(file = "servicos.json")

# Print the result.
print(result)
