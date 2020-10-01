library(tidyverse)
iris_1<- as.tibble(iris)
?select
colnames(iris_1)
select(iris_1,1)
select(iris_1, Sepal.Length)
select(iris_1, 1:2)
select(iris_1, Sepal.Length,Sepal.Width)
select(iris_1,-(4:5))
filter(iris_1,Petal.Width>=1)       
filter(iris_1,Petal.Width<2 & Species == "virginica")
arrange(iris_1,Petal.Width)
arrange(iris_1,desc(Petal.Width))
mutate(iris_1, sepa12 = Sepal.Length * Sepal.Width)
mutate(iris_1, sepal12 = Sepal.Length +10)
combinado<- mutate(iris_1, comprimento = if_else(Petal.Length>=4,"comprido","curto"))
combinado
View(combinado)
iris_1<- group_by(iris_1, Species)
summarise(iris_1, media= mean(Petal.Width),desvio_padrap=sd(Petal.Width), soma=sum(Petal.Width))
View(iris_1)

a<- data_frame("altura"=c(1.7,1.6,1.65), "peso"=c(60,55,70))
a1<- data_frame("altura"=c(1.7,1.6,1.65), "peso"=c(65,55,70))
a1
b<- data.frame("peso"=c(55,60,66),"genero"=c("masc","masc","fem"))
b
c<- data_frame(("x"=1:2,"y"=letters[9:10],"z"=200:201))
c
a
b
bind_cols(a,b)
bind_cols(b,a)
bind_cols(a,c)
bind_rows(a,b)
bind_rows(a,c)
bind_rows(a,a1)
?join
problema<- data_frame("a"=1:5,"b"=c(3,4,5,6,NA),"c"=c("a",1,2,3,4))
problema
str(problema)
filter(problema, c!= "a")
class(problema$c)
as.numeric(problema$c)%>% mean(na.rm=T)
problema$c<- as.numeric(problema$c)
mean(problema$b,na.rm=TRUE)
is.na(problema$b)
filter(problema, is.na(b) == FALSE & is.na(c)==F)
filter(problema,between(c,1,5))
filter(problema,between(c,1,5) & between(b,1,6))
