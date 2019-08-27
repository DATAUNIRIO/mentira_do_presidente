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
                titlePanel(h2(br(),paste("Novo gerador de LERO LERO Presidencial Tabajara"),style = "background-color: coral;")),
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
                               br(),
                               br(),
                               br(),
                               tags$h3(strong("INVENTE MENTIRAS COMO O PRESIDENTE"),style = "background-color: white; opacity: 0.6;"),
                               tags$h4("Nem todo mundo gosta do método cientifico. As vezes você só quer desviar a atenção e criar uma outra narrativa no melhor estilo da mamadeira de piroca.",style = "background-color: white; opacity: 0.6;"),
                               tags$h4("O gerador de embromação foi desenvolvido para aqueles que querem",strong("inventar mentiras igual ao presidente"), "sem ter que apresentar nenhuma prova.",style = "background-color: white; opacity: 0.6;"),
                               br(),
                               br(),
                               actionButton("btnlorota", label = "Gerar nova embromação"),
                               br(),
                               br(),
                               br(),
                               br(),
                               h3(textOutput("myoutput1"),style = "background-color: coral;"),
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
  load('LOROTA.Rdata')
  
  lorota <- eventReactive(input$btnlorota, {
    i<-sample(1:16,1) ; j<-sample(1:8,1); k<-sample(1:34,1)
    l<-sample(1:8,1) ; m<-sample(1:35,1) ;n<-sample(1:12,1)
    
    # Crie suas próprias mentiras no gerador de lorotas do Bolsonaro 
    lorota<-paste(problema[[1]][i],acao[[1]][j],responsavel[[1]][k],junto[[1]][l],outroresp[[1]][m],complemento[[1]][n],sep = " ")    
  })
  
  output$myoutput1 <- renderText({ 
  paste(lorota())
  })

  
}

shinyApp(ui = ui, server = server)
