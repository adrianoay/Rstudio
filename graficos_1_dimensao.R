iris_1<-iris
library(tidyverse)
ggplot(iris_1,aes(Petal.Length))+geom_bar()
ggplot(iris_1,aes(Petal.Length))+geom_histogram()
ggplot(iris_1,aes(Petal.Length))+geom_histogram(binwidth = 0.1)
ggplot(iris_1,aes(Petal.Length))+geom_density()
ggplot(iris_1,aes(Petal.Length))+geom_freqpoly()
ggplot(iris_1,aes(Petal.Length))+geom_dotplot(binwidth = 0.1)
g<- ggplot(iris_1)
g
ggplot(iris_1,aes(Petal.Length))+geom_freqpoly(binwidth = 0.1)
g + geom_histogram(aes(Petal.Length, fill=Species), 
                   binwidth = 0.1, alpha=0.3,colour ="black")

g + geom_histogram(aes(Petal.Length, colour=Species), 
                   binwidth = 0.1, alpha=0.3,foll ="black")
g + geom_density(aes(Petal.Length, fill=Species), 
                   binwidth = 0.1, alpha=0.3,colour ="black")
g + geom_freqpoly(aes(Petal.Length, fill=Species), 
                   binwidth = 0.1, alpha=0.3,colour ="black")
g + geom_histogram(aes(Petal.Length, fill=Species), 
                   binwidth = 0.1, alpha=0.3,colour ="black") +
geom_density(aes(Petal.Length, fill=Species), 
                     binwidth = 0.1, alpha=0.3,colour ="black")

g + geom_histogram(aes(Petal.Length, fill=Species), 
                   binwidth = 0.1, alpha=0.3,colour ="black") +
  geom_density(aes(Petal.Length,0.1*..count.., fill=Species), 
               alpha=0.3,colour ="black")
g + geom_histogram(aes(Petal.Length, fill=Species), 
                   binwidth = 0.1, alpha=0.3) +
  geom_freqpoly(aes(Petal.Length, colour=Species), 
               binwidth = 0.1, alpha=0.3)
g + geom_dotplot(aes(Petal.Length, fill=Species),binwidth = 0.1, alpha=0.3) +
  geom_freqpoly(aes(Petal.Length, colour=Species),binwidth = 0.1)
