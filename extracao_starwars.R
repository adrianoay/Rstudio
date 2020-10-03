library(tidyverse)
starwars
starwars_1<-starwars
starwars_1
View(starwars_1)
starwars_1_s<- select(starwars_1, one_of("name","height","hair_color","eye_color","gender"))
View(starwars_1_s)
starwars_M<- filter(starwars_1, sex == "male")
View(starwars_M)
?filter
starwars_N<- filter(starwars_1, sex != "male")
starwars_N
View(starwars_N)
filter(starwars_1, height >170)
filter(starwars_1, height <170)
indice_imc<- mutate(starwars_1, imc = (mass / (height*height))*100)
indice_imc
View(indice_imc)
View(starwars_1)
mean(starwars_1, is.na(height))
as.numeric(starwars_1$height)%>% mean(na.rm=T)
