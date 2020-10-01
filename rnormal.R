iris1<-iris
View(iris1)
summary(iris1)
iris[2,3]
iris1$Sepal.Length
iris1[,"Sepal.Length"]
mean(iris1$Sepal.Length)
setosa<- iris1[iris1$Species=="setosa",]
setosa
View(setosa)
maior5<- iris1[iris1$Sepal>5,]
iris1_<- iris1[,-1]
View(iris1_)
