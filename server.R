require(googleVis)
require(shiny)
require(dplyr)
require(tidyr)
load("data/pbg.Rda") 



shinyServer(function(input, output) {
  data<-reactive({
    a<-pbg %>% filter(Ano==input$year_map)
    a<-droplevels(a)
    return(a)
  })
  
  output$mapa <- renderGvis({
    gvisGeoChart(data(), locationvar="Code", colorvar=input$variable_map, hovervar="Provincia", options=list(region="AR", displayMode="region", resolution="provinces", width=600, height=400))  
  })
  
  
  
  data2<-reactive({
    a<-filter(pbg,Ano==input$year, Code==input$provincia)
    a<-a[5:21]
    a<-data.frame(t(a))
    a$labelvar<-row.names(a)
    a<-a[c(2,1)]
    a<-droplevels(a)
    return(a)
  })
  
  output$piechart <- renderGvis({
    gvisPieChart(data2(), labelvar="labelvar", numvar="t.a.", options=list(width=600, height=450))
  })
  
  
  
  data3<-reactive({
    a<-filter(pbg, Code==input$provincia2)
    myvars <- names(a) %in% c("Ano", input$variable2)
    a <- data.frame(a[myvars])
    a$Ano<-round(a$Ano,0)
    a<-droplevels(a)
    return(a)
  })
  
  output$linechart <- renderGvis({
    gvisLineChart(data3(), xvar=colnames(data3())[1], yvar=colnames(data3())[-1], options=list(width=600, height=450))
  })
  

  data4<-reactive({
    a<-select(pbg, Ano, Provincia, eval(parse(text=input$variable3)))
    a<-reshape(a, idvar="Ano", timevar="Provincia", direction="wide")
    names(a)<-c("Ano", "Buenos.Aires.", "Ciudad.Aurtónoma.de.Buenos.Aires.", "Catamarca", "Chaco", "Chubut", "Cordoba", "Corrientes", "Entre.Ríos", "Formosa", "Jujuy", "La.Pampa", "La.Rioja", "Mendoza", "Misiones", "Neuquén", "Río.Negro", "Salta", "San.Juan.", "San.Luis", "Santa.Cruz", "Santa.Fe", "Santiago.del.Estero", "Tierra.del.Fuego", "Tucumán")
    myvars2 <- names(a) %in% c("Ano", input$provincia3) 
    a <- data.frame(a[myvars2])
    a<-droplevels(a)
    return(a)
  })
  
  output$linechartcomp <- renderGvis({
    gvisLineChart(data4(), xvar=colnames(data4())[1], yvar=colnames(data4())[-1], options=list(width=600, height=450))
  })
  
})
