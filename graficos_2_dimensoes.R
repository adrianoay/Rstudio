library(tidyverse)
graf<- iris %>% group_by(Species) %>% summarise(media = mean(Sepal.Length),desvio = sd(Sepal.Length)) 
View(graf)
g<- ggplot(graf)
g+geom_col(aes(x=Species, y=media))
g+geom_col(aes(x=Species, y=desvio))
g+geom_linerange(aes(x=Species, ymin=media-desvio,ymax=media+desvio),linetype="dashed")
g+geom_errorbar(aes(x=Species, ymin=media-desvio,ymax=media+desvio),
linetype="longdash")
g+geom_errorbarh(aes(y=Species,x=media, xmin=media-desvio,xmax=media+desvio))
g+geom_pointrange(aes(x=Species, y=media, ymin=media-desvio, ymax=media+desvio,colour=Species,size=3))
g+geom_col(aes(x=Species, y=media, fill=Species))+
  geom_errorbar(aes(x=Species,ymin=media-desvio,ymax=media+desvio),linetype="longdash")
g1<- ggplot(iris)
View(g1)
g1 + geom_point(aes(x=Petal.Length,y=Petal.Width))
g1 + geom_point(aes(x=Petal.Length,y=Petal.Width, colour=Species))
g1 + geom_point(aes(x=Petal.Length,y=Petal.Width, shape=Species))
g1 + geom_point(aes(x=Petal.Length,y=Petal.Width, colour=Species, shape=Species))

g1 + geom_jitter(aes(x=Petal.Length, y=Petal.Width))
g1 + geom_line(aes(Petal.Length,Petal.Width))
View(economics)

j<-ggplot(economics)

View(j)

j+ geom_line(aes(date,unemploy))
j+ geom_area(aes(date,unemploy))
















