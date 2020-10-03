library(gutenbergr)
library(tidyverse)
library(tidytext)
set.seed(227)
numeros<- sample(1:40737,150)
numeros
english<- gutenberg_works(languages = "en")
id<- english$gutenberg_id[numeros]

livros<- gutenberg_download(id, meta_fields = "title")

freq<- livros %>% unnest_tokens(palavras,text) %>% count(palavras, sort = TRUE)
freq
freq3<- livros %>% unnest_tokens(palavras,text, token = "ngrams", n=3) %>% count(palavras, sort = TRUE)
freq3
freq4<- livros %>% unnest_tokens(palavras,text, token = "ngrams", n=4) %>% count(palavras, sort = TRUE)
freq5<- freq %>% filter(!palavras %in% stop_words$word) 

stop_words$word

freq4 %>% filter(n>30) %>% View
freq3 %>% filter(n>30) %>% View
freq %>% filter(n>100) %>% View
freq5 %>% filter(n>30) %>% View

freq_<- freq[1:50,]
freqs_<- freq5[1:50,]
freq4_<- freq4[1:30,]
freq3_<- freq3[1:30,]

ggplot(freq_)+geom_col(aes(x=reorder(palavras,-n),y=n),fill ="tomato3",colour = "black")+
    labs(y="Frequência",x="Palavra")+
    theme_bw()+theme(axis.text.x = element_text(angle = 90, hjust = 1))

ggplot(freqs_)+geom_col(aes(x=reorder(palavras,-n),y=n),fill ="tomato3",colour = "black")+
  labs(y="Frequência",x="Palavra")+
  theme_bw()+theme(axis.text.x = element_text(angle = 90, hjust = 1))

ggplot(freq3_)+geom_col(aes(x=reorder(palavras,-n),y=n),fill ="tomato3",colour = "black")+
  labs(y="Frequência",x="Palavra")+
  theme_bw()+theme(axis.text.x = element_text(angle = 90, hjust = 1))

ggplot(freq4_)+geom_col(aes(x=reorder(palavras,-n),y=n),fill ="tomato3",colour = "black")+
  labs(y="Frequência",x="Palavra")+
  theme_bw()+theme(axis.text.x = element_text(angle = 90, hjust = 1))




