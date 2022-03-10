install.packages("readxl")
library(readxl)
getwd()
data = read_excel("CAP04/sports_ball.csv")
 sports=read.csv("sports_ball.csv", sep = ",")

 

 
plot(sports$Year,sports$BOS)
plot(sports$Year,sports$BOS, xlab = "year", ylab="Average Score", main="BOS score")
plot(sports$Year,sports$BOS, xlab = "year", ylab="Average Score", main="BOS score", type =  "b")
plot(sports$Year,sports$BOS, xlab = "year", ylab="Average Score", main="BOS score", type =  "l")
plot(sports$Year,sports$BOS, xlab = "year", ylab="Average Score", main="BOS score")
plot(sports$Year,sports$BOS, xlab = "year", ylab="Average Score", main="BOS score", type =  "l", pch=1)
plot(sports$Year,sports$BOS, xlab = "year", ylab="Average Score", main="BOS score", type =  "l", pch=0)
plot(sports$Year,sports$BOS, xlab = "year", ylab="Average Score", main="BOS score", type =  "l", pch=3)
plot(sports$Year,sports$BOS, xlab = "year", ylab="Average Score", main="BOS score", type =  "l", pch=19)
plot(sports$Year,sports$BOS, xlab = "year", ylab="Average Score", main="BOS score")

lines(lowess(sports$Year,sports$BOS))
lines(lowess(sports$Year,sports$BOS), lwd = 2)
lines(lowess(sports$Year,f = 1/3), lwd = 2)
lines(lowess(sports$Year,sports$BOS), lwd = 2)


 
