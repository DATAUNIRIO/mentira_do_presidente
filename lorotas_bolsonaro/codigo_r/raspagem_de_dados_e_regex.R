
library(rvest)
library(dplyr)
url <- "https://perchance.org/lorotasbolsonaro"

lorota <- url %>%
  read_html(encoding = "UTF-8") %>%
  html_nodes('script') %>% html_text()

lorota2<-lorota[[2]]

library(stringi)
library(magrittr)

lorota3 <-lorota2 %>% 
  stri_replace_all_regex("%C3%A9", "é") %>% 
  stri_replace_all_regex("%20", " ") %>% 
  stri_replace_all_regex("%C3%A3", "ã") %>% 
  stri_replace_all_regex("%5Cn%5Ct", ";") %>% 
  stri_replace_all_regex("%C3%AA", "ê") %>%  #A viol%C3%AAncia no Brasil
  stri_replace_all_regex("%C3%A1", "á") %>%  #saneamento b%C3%A1sico
  stri_replace_all_regex("%C3%A7%C3%B5", "õ") %>% # organiza%C3%A7%C3%B5es corpora%C3%A7%C3%B5es
  stri_replace_all_regex("%C3%A7ã", "çã") %>% # opera%C3%A7ão corrup%C3%A7ão
  stri_replace_all_regex("%C3%B3", "ó") %>% # alta do d%C3%B3lar;
  stri_replace_all_regex("%C3%B4", "ô") %>% #Amaz%C3%B4nia
  stri_replace_all_regex("%C3%A7", "ç") %>% #ma%C3%A7onaria
  stri_replace_all_regex("%C3%AD", "í")   #da%C3%AD.
#  stri_unescape_unicode() %>% 
#  stri_enc_toutf8()


lorota4<- strsplit(lorota3, "n%5C")
  
lorota5<-lorota4[[1]][3]
lorota6<-lorota4[[1]][4]

lorota5 <-gsub("nproblema;","",lorota5)
lorota5 <-gsub("nacao;","",lorota5)
lorota5 <-gsub("responsavel;","",lorota5)
lorota5 <-gsub("%5Cn","%5C",lorota5)
lorota5<- strsplit(lorota5, "%5C")

lorota6 <-gsub("njunto;","",lorota6)
lorota6 <-gsub("%5Cnoutroresp;","AAAAA",lorota6)
lorota6 <-gsub("%5Cncomplemento;","AAAAA",lorota6)
lorota6 <-gsub("%5Cn",";",lorota6)
lorota6<- strsplit(lorota6, "AAAAA")
lorota6



%5Bjunto%5D 
%5Boutroresp%5D, 
%5B%5D%5Cn%5C

lorota7<-c()
lorota7$problema <-lorota5[[1]][1]
lorota7$acao <-lorota5[[1]][2]
lorota7$responsavel <-lorota5[[1]][3]

lorota7$junto<-lorota6[[1]][1]
lorota7$outroresp<-lorota6[[1]][2]
lorota7$complemento<-lorota6[[1]][3]
lorota7

lorota<-lorota7
saveRDS(lorota,file = "lorota.RDS")

lorota<-readRDS('dados/lorota.RDS')
