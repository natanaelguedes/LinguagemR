install.packages("bibliometrix", dependencies=TRUE) ### installs bibliometrix package and dependencies

library(bibliometrix)   ### load bibliometrix package
file <- "https://www.bibliometrix.org/datasets/savedrecs.bib"

M <- convert2df(file = file, dbsource = "isi", format = "bibtex")
M
# 
mode(M)
