# Em solidariedade ao nosso presidente, criei este gerador para que ele possa continuar mentindo em público, mas sem precisar raciocinar e, claro, sem ter que apresentar nenhuma prova.
# https://rafaelcapanema.blogosfera.uol.com.br/uol_amp/2019/08/22/crie-suas-proprias-mentiras-no-gerador-de-lorotas-do-bolsonaro/?__twitter_impression=true&fbclid=IwAR0yT3al499y6H4Xx_7rywWuNKn9PFRE2FYk62eM2dGK1foMtlt2AdFKAZ8
# https://aosfatos.org/todas-as-declara%C3%A7%C3%B5es-de-bolsonaro/
# Rafael Capanema  22/08/2019 18h04
# 
# Sem apresentar provas, o presidente da República acusou ONGs internacionais de estarem por trás das queimadas na floresta Amazônica.
# Como se sabe, Bolsonaro mente mais de uma vez por dia e dorme muito mal. Em exames a que foi submetido, registraram-se até 89 alterações por hora em seu sono, o que levou a um médico a lhe perguntar: "Como é que você consegue raciocinar?"
# Em solidariedade ao nosso presidente, criei este gerador para que ele possa continuar mentindo em público, mas sem precisar raciocinar e, claro, sem ter que apresentar nenhuma prova.

# 
# Rafael Capanema é formado em jornalismo. Trabalhou na Folha de S.Paulo e no BuzzFeed. Paulistano, mora em Madri desde 2015.
# Sobre o Blog
# 
# Um espaço para entreter, tendo sempre o humor como norte, a partir da minha experiência como redator de entretenimento, repórter de tecnologia e autor de blogs nos primórdios.



#.libPaths("/home/steven/R/x86_64-pc-linux-gnu-library/3.4")
#library(shiny, lib.loc="/home/steven/R/x86_64-pc-linux-gnu-library/3.4")
#library(magrittr, lib.loc="/home/steven/R/x86_64-pc-linux-gnu-library/3.4")
#library(shinyWidgets, lib.loc="/home/steven/R/x86_64-pc-linux-gnu-library/3.4")

library(shiny)
library(shinyjs)
library(magrittr)
library(shinyWidgets)

ui <- fluidPage(theme = "estilo.css",
                tags$head(tags$style(HTML('
                #header{
                font-size: 200%;
                }'))),
                #setBackgroundColor("#a7e5c2"),
                setBackgroundImage(src = "https://media.metrolatam.com/2019/05/06/bolsonaro-b5432043d4bc00085d6344d1d4f9f3cc-1200x600.jpg"),
                #setBackgroundImage(src = 'www/bolsonaro.jpg'),
                titlePanel(h2(br(),paste("Novo gerador de embromação presidencial Tabajara"),style = "background-color: coral;")),
                  mainPanel(
                    tabsetPanel(
                      tabPanel("Gerador de Mentiras", 
                               br(),
                               br(),
                               br(),
                               br(),
                               br(),
                               br(),
                               br(),
                               br(),
                               br(),
                               tags$h3(strong("INVENTE MENTIRAS COMO O PRESIDENTE"),style = "background-color: white; opacity: 0.6;"),
                               tags$h4("Nem todo mundo gosta do método cientifico. As vezes você só quer desviar a atenção e criar uma outra narrativa.", strong("Como este site, você pode criar narrativas iguais a mamadeira de piroca."),style = "background-color: white; opacity: 0.6;"),
                               tags$h4("O gerador de embromação foi desenvolvido para aqueles que querem",strong("inventar mentiras igual ao presidente"), "sem ter que apresentar nenhuma prova.",style = "background-color: white; opacity: 0.6;"),
                               br(),
                               br(),
                               actionButton("btnlorota", label = "Gerar nova embromação"),
                               br(),
                               br(),
                               h3(textOutput("myoutput1"),style = "background-color: coral;"),
                               br(),
                               br(),
                               tags$footer(a("Essa é uma reprodução para estudar o shiny e o R. O site original do Rafael Capanema com o nome 'Crie suas próprias mentiras no gerador de lorotas do Bolsonaro' pode ser encontrado aqui.",href="https://rafaelcapanema.blogosfera.uol.com.br/uol_amp/2019/08/22/crie-suas-proprias-mentiras-no-gerador-de-lorotas-do-bolsonaro/?__twitter_impression=true&fbclid=IwAR0yT3al499y6H4Xx_7rywWuNKn9PFRE2FYk62eM2dGK1foMtlt2AdFKAZ8"),style = "background-color: white; opacity: 0.8;")),
                      tabPanel("Desmascarando as Mentiras de Bolsonaro", 
                               tags$h1("Em 234 dias como presidente, Bolsonaro deu 256 declarações falsas ou distorcidas",style = "background-color: white; opacity: 0.6;"),
                               a(href='https://aosfatos.org/todas-as-declara%C3%A7%C3%B5es-de-bolsonaro/' ,
                                 tags$img(src = "https://i.ytimg.com/vi/vvx_6ay5ww0/maxresdefault.jpg",width="1100", height="800" ,
                                        alt= "TESTE")),
                               tags$footer(a("Essa é uma reprodução para estudar o shiny e o R. O site original do Rafael Capanema com o nome 'Crie suas próprias mentiras no gerador de lorotas do Bolsonaro' pode ser encontrado aqui.",href="https://rafaelcapanema.blogosfera.uol.com.br/uol_amp/2019/08/22/crie-suas-proprias-mentiras-no-gerador-de-lorotas-do-bolsonaro/?__twitter_impression=true&fbclid=IwAR0yT3al499y6H4Xx_7rywWuNKn9PFRE2FYk62eM2dGK1foMtlt2AdFKAZ8"),style = "background-color: white; opacity: 0.8;")
                               ) 
                )
))

server <- function(input, output,session) {

  problema<-c("O aquecimento global",
              "A série de incêndios na Amazônia",                            
              "O desmatamento da Amazônia",                                  
              "O baixo rendimento do Neymar",                                
              "A alta do dólar",                                             
              "A fome no Brasil",                                            
              "O baixo crescimento do Brasil",                               
              "O desemprego no Brasil",                                      
              "A questão das drogas no Brasil",
              "A violência no Brasil",                           
              "O problema da educação no Brasil",
              "O surto de sarampo",                                          
              "A corrupção no Brasil",                                       
              "A falta de saneamento básico no Brasil",                      
              "A dificuldade de empreender no Brasil",
              "A minha baixa popularidade segundo os institutos de pesquisa",
              "A Inflação",
              "A minha imagem no Brasil e no exterior")
  
  acao<-c("é culpa","é responsabilidade",
          "é de total responsabilidade", "é resultado da ação",        
          "tem como causa a ação","é consequência da atuação",  
          "é fruto de uma operação","decorre das atividades")
  
  responsavel<-c("do PT",
                 "dos amigos do PT",
                 "das grandes corporaões europeias",
                 "dos extraterrestres",
                 "dos petistas",
                 "do Lula",
                 "da dona Dilma",
                 "das FARC",
                 "dos cantores de MPB",
                 "dos poetas de rua",
                 "dos maconheiros",
                 "dos Illuminati",
                 "dos comunistas",
                 "dos terroristas de esquerda",
                 "do menino do Acre",
                 "dos quilombolas",
                 "do movimento gay",
                 "do Barack Obama",
                 "dos adeptos do poliamor",
                 "do Zé Celso",
                 "dos entusiastas de artesanato",
                 "dos antifas",
                 "dos estudantes de artes cênicas",
                 "das baleias da Dinamarca",
                 "dos membros do PSOL",
                 "da extrema imprensa",
                 "dos fãs do pagode dos anos 90",
                 "do papa Francisco",
                 "das bailarinas do Faustão",
                 "do Bruno de Luca",
                 "do Galvão Bueno",
                 "do Justin Bieber",
                 "do Chiquinho Scarpa",
                 "dos cientistas")

    junto<-c("em conluio com",    
           "junto com",         
           "em parceria com",   
           "juntamente com",    
           "em colaboração com",
           "em cooperação com" ,
           "em associação com", 
           "em conjunção com")
    
    outroresp<-c("as organizaões Disney",
                 "as ONGs estrangeiras",
                 "os chineses",
                 "o Ed Sheeran",
                 "a Ariana Grande",
                 "a Billie Eilish",
                 "a Rihanna",
                 "a Bruna Marquezine",
                 "o Belchior",
                 "o Caetano Veloso",
                 "o Chico Buarque",
                 "o Chico Barney",
                 "a Avril Lavigne",
                 "a Paola Carosella",
                 "a Britney Spears",
                 "a Taylor Swift",
                 "a Juju Salimeni",
                 "o Zé Gotinha",
                 "o Dollynho",
                 "o Canarinho Pistola",
                 "a Catifunda da Escolinha do Professor Raimundo",
                 "  a Lady Gaga",
                 "  a Beyoncé",
                 "a maçonaria",
                 "os médicos cubanos",
                 "o Chupa-Cu de Goianinha",
                 "o ET Bilu",
                 "a Geisy Arruda",
                 "a Bruna Surfistinha",
                 "a Rede Globo",
                 "a Folha de S.Paulo",
                 "os veganos",
                 "os estudantes de humanas",
                 "os praticantes de golden shower",
                 "os proprietários de hamburguerias artesanais")
    
    complemento<-c("tá OK?",                         
      "ninguém fala isso daí.",         
      "todo mundo sabe disso.",         
      "isso aí já tá provado.",         
      "eu sempre disse isso.",          
      "isso não é segredo pra ninguém.",
      "precisa de prova disso?",        
      "não precisa de prova isso daí.", 
      "no meu entendimento.",           
      "alguém tinha que falar isso.",   
      "com toda a certeza.",            
      "eu sei disso.")
    
  lorota <- eventReactive(input$btnlorota, {
    i<-sample(1:18,1) ; j<-sample(1:8,1); k<-sample(1:34,1)
    l<-sample(1:8,1) ; m<-sample(1:35,1) ;n<-sample(1:12,1)
    
    # Crie suas próprias mentiras no gerador de lorotas do Bolsonaro 
    lorota<-paste(problema[i],acao[j],responsavel[k],junto[l],outroresp[m],complemento[n],sep = " ")    
  })
  
  output$myoutput1 <- renderText({ 
  paste(lorota())
  })

  
}

shinyApp(ui = ui, server = server)
