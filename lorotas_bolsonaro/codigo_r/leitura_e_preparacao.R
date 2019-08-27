
lorota<-readRDS('dados/lorota.RDS')


problema<- strsplit(lorota$problema, ";")
acao<- strsplit(lorota$acao, ";")
responsavel<- strsplit(lorota$responsavel, ";")
junto<- strsplit(lorota$junto, ";")
outroresp<- strsplit(lorota$outroresp, ";")
complemento<- strsplit(lorota$complemento, ";")
complemento[[1]][12]<-"eu sei disso."

save(problema,acao,responsavel,junto,outroresp,complemento,file = 'dados/LOROTA.RData')
