

getwd()

#hora e data do sistema
hoje = Sys.Date()
hoje
class(hoje)
Sys.time()
Sys.timezone()

#Data representa por Date
#Armazenados com números de segundos desde de 1 de janeiro de 1970
#Time representado por POSIXCT
#Armazenados como numero de segundos  desde 1 de janeiro de 1970

#formatando datas
#%d dia do mês em 2 digitos (11)
#m mes em 2 digitos
#y ano em 2 digitos 
#%Y ANO EM 4 DIGITOS (1982)
#%A dia de semana (Friday)
#a dia da semana abreviado (Fri)
#B mês (July)
#b mês abreviado (Jul)


#formatando a saída -  as.Date()

as.Date("2018-02-03")
as.Date("Jun-28-18", format = "%b-%d-%y")
as.Date("28 June, 2018", format = "%d %B, %Y")



#Função format()
Sys.Date()
format(Sys.Date(),format = "%d %B, %Y ")
format(Sys.Date(),format = "Hoje é %A ")

#convertendo datas

datadehoje = as.POSIXct(hoje, format = "%B %d, %Y hours: %H minutes: %M seconds %s")
datadehoje


#operacoes com datas

datadehoje = asDate("2016 06 25", format = "%Y %m %d")
datadehoje
datadehoje+2

data2 = as.POSIXct("2006-05-14 11:23:134") 
datahoje = as.Date(data2, format = "%d %m %Y")
datahoje
data2
dts = c(1127056501,1104295502,1129233601,1113547501,111982601,1132519502,11259801,11113289201)

dts
datas = dts
datas
             #conveter vetor em data
class(datas) = c('POSIXT','POSIXct')
datas


mydate = structure(dts, class= c('POSIXT', 'POSIXCT'))
mydate

#função ISODate
b1 = ISOdate(2011,3,23)
b1
b2 = ISOdate(2012,9,19)
b1
b2-b1

difftime(b1,b2, units = 'weeks')
install.packages("lubridate")
require("lubridate")
ymd("20180604")
mdy("06 04 2018")
dmy(" 04/06/2018")


partida <- ymd_hms("2016-06-04 12:00:00", tz = "Pacific/Auckland ")
chegada = ymd_hms("2013-08-10 14:00:10", tz="Pacific/Auckland")

partida
chegada

second(partida) = 12
second(chegada) <- 21
mode(partida)
typeof(partida)

mode(chegada)
typeof(chegada)

interval(chegada,partida)
tml.lub = ymd_hms("05/05/20 08:32:00")
tml.lub

tml.lub = mdy_hm("05/05/2001 08:00")
tml.lub

year(tml.lub)
week(tml.lub)

tm1.dechr = hour(tml.lub)
tm1.dechr




# Gerando um dataframe de datas
sono <- data.frame(bed.time = ymd_hms("2013-09-01 23:05:24", "2013-09-02 22:51:09", 
                                      "2013-09-04 00:09:16", "2013-09-04 23:43:31", "2013-09-06 00:17:41", "2013-09-06 22:42:27", 
                                      "2013-09-08 00:22:27"), rise.time = ymd_hms("2013-09-02 08:03:29", "2013-09-03 07:34:21", 
                                                                                  "2013-09-04 07:45:06", "2013-09-05 07:07:17", "2013-09-06 08:17:13", "2013-09-07 06:52:11", 
                                                                                  "2013-09-08 07:15:19"), sleep.time = dhours(c(6.74, 7.92, 7.01, 6.23, 6.34, 7.42, 6.45)))
sono
sono$eficiencia <- round(sono$sleep.time/(sono$rise.time - sono$bed.time) * 100, 1)
sono


# Gerando um plot a partir de datas
par(mar = c(5, 4, 4, 4))
plot(round_date(sono$rise.time, "day"), sono$eficiencia, type = "o", col = "blue", xlab = "Manhã", ylab = NA)
par(new = TRUE)
plot(round_date(sono$rise.time, "day"), sono$sleep.time/3600, type = "o", col = "red", axes = FALSE, ylab = NA, xlab = NA)
axis(side = 4)
mtext(side = 4, line = 2.5, col = "red", "Duração do Sono")
mtext(side = 2, line = 2.5, col = "blue", "Eficiência do Sono")


