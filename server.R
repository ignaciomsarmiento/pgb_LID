require(googleVis)
require(shiny)
require(dplyr)
load("data/pbg.Rda") 
load("data/empresas.Rda")


shinyServer(function(input, output) {
  data<-reactive({
    a<-pbg %>% select(Ano, Provincia, PBG.a.precios.de.mercado..aproximados..,Code)
    a<-pbg %>% filter(Ano==input$year)
    a<-droplevels(a)
    return(a)
  })
  
  output$mapa <- renderGvis({
    gvisGeoChart(data(), locationvar="Code", colorvar=input$variable, hovervar="Provincia", options=list(region="AR", displayMode="region", resolution="provinces", width=600, height=400))  
  })
  
  
  data2<-reactive({
    a<-empresas %>% select(year, Provincia, Empresas.Total,Code)
    a<-empresas %>% filter(year==input$year2)
    a<-droplevels(a)
    return(a)
  })
  
  output$mapaxsector <- renderGvis({
    gvisGeoChart(data2(), locationvar="Code", colorvar=input$variable2, hovervar="Provincia", options=list(region="AR", displayMode="region", resolution="provinces", width=600, height=400))  
  })
  
  
  data3<-reactive({
    a<-empleo %>% select(year, Provincia, Empleo.Formal.Total,Code)
    a<-empleo %>% filter(year==input$year3)
    a<-droplevels(a)
    return(a)
  })
  
  output$mapaxempleo <- renderGvis({
    gvisGeoChart(data3(), locationvar="Code", colorvar=input$variable3, hovervar="Provincia", options=list(region="AR", displayMode="region", resolution="provinces", width=600, height=400))  
  })

})

