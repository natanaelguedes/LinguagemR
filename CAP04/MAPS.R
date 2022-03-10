
install.packages("ggplot2")
install.packages("maps")
install.packages("mapdata")
#https://www.youtube.com/watch?v=h2IPWVXaUuU


library(ggplot2)
library(maps)
library(mapdata)

mapa = map_data("world")
mapa

#visualiza dataframe
dim(mapa)
View(mapa)

ggplot()+geom_polygon(data = mapa, aes(x=long,y=lat, group=group ))+coord_fixed()
ggplot()+geom_polygon(data = mapa, aes(x=long,y=lat, group=group ),fill=NA, color="blue")+coord_fixed()
g1=ggplot()+geom_polygon(data = mapa, aes(x=long,y=lat, group=group ),fill="seagreen1", color="blue")+coord_fixed()
g1
#marcando pontos no mapa

# Marcando alguns pontos no mapa
# Podemos usar um shapefile
labs <- data.frame(
  long = c(69.24140, -2.8456051),
  lat = c(-78.38995, 22.44512),
  names = c("Ponto1", "Ponto2"),
  stringsAsFactors = FALSE
)  

# Pontos no mapa
gg1 + 
  geom_point(data = labs, aes(x = long, y = lat), color = "black", size = 2) +
  geom_point(data = labs, aes(x = long, y = lat), color = "yellow", size = 2)

# Divisão por países
ggplot(data = mapa) + 
  geom_polygon(aes(x = long, y = lat, fill = region, group = group), color = "white") + 
  coord_fixed(1.3) +
  guides(fill=FALSE)


# rMaps 
# http://rmaps.github.io
require(devtools)
install_github('ramnathv/rCharts@dev')
install_github('ramnathv/rMaps')

library(rMaps)
crosslet(
  x = "country", 
  y = c("web_index", "universal_access", "impact_empowerment", "freedom_openness"),
  data = web_index
)




