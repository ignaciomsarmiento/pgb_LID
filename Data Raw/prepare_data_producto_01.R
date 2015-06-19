#Prepare data

rm(list = ls())
require(xlsx)

setwd("/Users/IKI/Dropbox/Phd\ Illinois/Work\ with\ Pedro/Shiny/Shiny App LID")
list.files("Data Raw")
list.files("App LID/data")

pbg<-read.xlsx("Data Raw/Producto_01.xlsx",sheetIndex = 1, header=TRUE, colClasses=c("numeric","character",rep("numeric",19)))

#Turn into strings the name of provinces
pbg$Provincia<-as.character(pbg$Provincia)
class(pbg$Provincia)
class(pbg$PBG.a.precios.de.mercado..aproximados..)

#round the numbers
pbg[,3:21]<-round(pbg[,3:21],2)

#Asign codes for maps
pbg$Code<-NA
pbg$Code[pbg$Provincia=="Ciudad Aurtónoma de Buenos Aires "]<-"AR-C"
pbg$Code[pbg$Provincia=="Buenos Aires "]<-"AR-B"
pbg$Code[pbg$Provincia=="Catamarca"]<-"AR-K"
pbg$Code[pbg$Provincia=="Chaco"]<-"AR-H"                            
pbg$Code[pbg$Provincia=="Chubut"]<-"AR-U"                          
pbg$Code[pbg$Provincia=="Córdoba"]<-"AR-X"                          
pbg$Code[pbg$Provincia=="Corrientes"]<-"AR-W"                       
pbg$Code[pbg$Provincia=="Entre Ríos"]<-"AR-E"                       
pbg$Code[pbg$Provincia=="Formosa"]<-"AR-P"                          
pbg$Code[pbg$Provincia=="Jujuy"]<-"AR-Y"                            
pbg$Code[pbg$Provincia=="La Pampa"]<-"AR-L"                         
pbg$Code[pbg$Provincia=="La Rioja"]<-"AR-F"                        
pbg$Code[pbg$Provincia=="Mendoza"]<-"AR-M"                         
pbg$Code[pbg$Provincia=="Misiones"]<-"AR-N"                         
pbg$Code[pbg$Provincia=="Neuquén"]<-"AR-Q"                       
pbg$Code[pbg$Provincia=="Río Negro"]<-"AR-R"                        
pbg$Code[pbg$Provincia=="Salta"]<-"AR-A"                            
pbg$Code[pbg$Provincia=="San Juan "]<-"AR-J"                        
pbg$Code[pbg$Provincia=="San Luis"]<-"AR-D"                         
pbg$Code[pbg$Provincia=="Santa Cruz"]<-"AR-Z"                       
pbg$Code[pbg$Provincia=="Santa Fe"]<-"AR-S"                         
pbg$Code[pbg$Provincia=="Santiago del Estero"]<-"AR-G"              
pbg$Code[pbg$Provincia=="Tierra del Fuego"]<-"AR-V"                 
pbg$Code[pbg$Provincia=="Tucumán"]<-"AR-T"


pbg$Provincia[pbg$Provincia=="Ciudad Aurtónoma de Buenos Aires "]<-"Ciudad Autónoma de Buenos Aires"

list.files("App LID/data/")
save(pbg,file="App LID/data/pbg.Rda")

empresas<-read.xlsx("Data Raw/Producto_01.xlsx",sheetIndex = 2, header=TRUE, colClasses=c("numeric","character",rep("numeric",8)), stringsAsFactors=FALSE)

names(empresas)[1]<-"year"
names(empresas)[2]<-"Provincia"

empresas$Code<-NA
empresas$Code[empresas$Provincia=="Ciudad Aurtónoma de Buenos Aires "]<-"AR-C"
empresas$Code[empresas$Provincia=="Buenos Aires "]<-"AR-B"
empresas$Code[empresas$Provincia=="Catamarca"]<-"AR-K"
empresas$Code[empresas$Provincia=="Chaco"]<-"AR-H"                            
empresas$Code[empresas$Provincia=="Chubut"]<-"AR-U"                          
empresas$Code[empresas$Provincia=="Córdoba"]<-"AR-X"                          
empresas$Code[empresas$Provincia=="Corrientes"]<-"AR-W"                       
empresas$Code[empresas$Provincia=="Entre Ríos"]<-"AR-E"                       
empresas$Code[empresas$Provincia=="Formosa"]<-"AR-P"                          
empresas$Code[empresas$Provincia=="Jujuy"]<-"AR-Y"                            
empresas$Code[empresas$Provincia=="La Pampa"]<-"AR-L"                         
empresas$Code[empresas$Provincia=="La Rioja"]<-"AR-F"                        
empresas$Code[empresas$Provincia=="Mendoza"]<-"AR-M"                         
empresas$Code[empresas$Provincia=="Misiones"]<-"AR-N"                         
empresas$Code[empresas$Provincia=="Neuquén"]<-"AR-Q"                       
empresas$Code[empresas$Provincia=="Río Negro"]<-"AR-R"                        
empresas$Code[empresas$Provincia=="Salta"]<-"AR-A"                            
empresas$Code[empresas$Provincia=="San Juan "]<-"AR-J"                        
empresas$Code[empresas$Provincia=="San Luis"]<-"AR-D"                         
empresas$Code[empresas$Provincia=="Santa Cruz"]<-"AR-Z"                       
empresas$Code[empresas$Provincia=="Santa Fe"]<-"AR-S"                         
empresas$Code[empresas$Provincia=="Santiago del Estero"]<-"AR-G"              
empresas$Code[empresas$Provincia=="Tierra del Fuego"]<-"AR-V"                 
empresas$Code[empresas$Provincia=="Tucumán"]<-"AR-T"


save(empresas,file="App LID/data/empresas.Rda")
load("App LID/data/empresas.Rda")



empleo<-read.xlsx("Data Raw/Producto_01.xlsx",sheetIndex = 3, header=TRUE, colClasses=c("numeric","character",rep("numeric",8)), stringsAsFactors=FALSE)


names(empleo)[1]<-"year"
names(empleo)[2]<-"Provincia"

empleo$Code<-NA
empleo$Code[empleo$Provincia=="Ciudad Aurtónoma de Buenos Aires "]<-"AR-C"
empleo$Code[empleo$Provincia=="Buenos Aires "]<-"AR-B"
empleo$Code[empleo$Provincia=="Catamarca"]<-"AR-K"
empleo$Code[empleo$Provincia=="Chaco"]<-"AR-H"                            
empleo$Code[empleo$Provincia=="Chubut"]<-"AR-U"                          
empleo$Code[empleo$Provincia=="Córdoba"]<-"AR-X"                          
empleo$Code[empleo$Provincia=="Corrientes"]<-"AR-W"                       
empleo$Code[empleo$Provincia=="Entre Ríos"]<-"AR-E"                       
empleo$Code[empleo$Provincia=="Formosa"]<-"AR-P"                          
empleo$Code[empleo$Provincia=="Jujuy"]<-"AR-Y"                            
empleo$Code[empleo$Provincia=="La Pampa"]<-"AR-L"                         
empleo$Code[empleo$Provincia=="La Rioja"]<-"AR-F"                        
empleo$Code[empleo$Provincia=="Mendoza"]<-"AR-M"                         
empleo$Code[empleo$Provincia=="Misiones"]<-"AR-N"                         
empleo$Code[empleo$Provincia=="Neuquén"]<-"AR-Q"                       
empleo$Code[empleo$Provincia=="Río Negro"]<-"AR-R"                        
empleo$Code[empleo$Provincia=="Salta"]<-"AR-A"                            
empleo$Code[empleo$Provincia=="San Juan "]<-"AR-J"                        
empleo$Code[empleo$Provincia=="San Luis"]<-"AR-D"                         
empleo$Code[empleo$Provincia=="Santa Cruz"]<-"AR-Z"                       
empleo$Code[empleo$Provincia=="Santa Fe"]<-"AR-S"                         
empleo$Code[empleo$Provincia=="Santiago del Estero"]<-"AR-G"              
empleo$Code[empleo$Provincia=="Tierra del Fuego"]<-"AR-V"                 
empleo$Code[empleo$Provincia=="Tucumán"]<-"AR-T"


save(empleo,file="App LID/data/empleo.Rda")
