#Prepare data

rm(list = ls())
require(xlsx)

setwd("/Users/IKI/Dropbox/Phd\ Illinois/Work\ with\ Pedro/Shiny/Shiny App LID")
list.files("Data Raw")

expo<-read.xlsx("Data Raw/Producto_02.xlsx",sheetIndex = 1, header=TRUE, colClasses=c("numeric","character",rep("numeric",6)), stringsAsFactors=FALSE)


names(expo)[1]<-"Ano"
names(expo)[2]<-"Provincia"
names(expo)[3]<-"Exportaciones.Totales"
names(expo)[4]<-"Productos.Primarios"
names(expo)[5]<-"Manufacturas.de.Origen.Agropecuario.MOA"
names(expo)[6]<-"Manufacturas.de.Origen.Industrial..MOI"
names(expo)[7]<-"Combustibles.y.Energia"

expo$Code<-NA
expo$Code[expo$Provincia=="Ciudad Aurtónoma de Buenos Aires "]<-"AR-C"
expo$Code[expo$Provincia=="Buenos Aires "]<-"AR-B"
expo$Code[expo$Provincia=="Catamarca"]<-"AR-K"
expo$Code[expo$Provincia=="Chaco"]<-"AR-H"                            
expo$Code[expo$Provincia=="Chubut"]<-"AR-U"                          
expo$Code[expo$Provincia=="Córdoba"]<-"AR-X"                          
expo$Code[expo$Provincia=="Corrientes"]<-"AR-W"                       
expo$Code[expo$Provincia=="Entre Ríos"]<-"AR-E"                       
expo$Code[expo$Provincia=="Formosa"]<-"AR-P"                          
expo$Code[expo$Provincia=="Jujuy"]<-"AR-Y"                            
expo$Code[expo$Provincia=="La Pampa"]<-"AR-L"                         
expo$Code[expo$Provincia=="La Rioja"]<-"AR-F"                        
expo$Code[expo$Provincia=="Mendoza"]<-"AR-M"                         
expo$Code[expo$Provincia=="Misiones"]<-"AR-N"                         
expo$Code[expo$Provincia=="Neuquén"]<-"AR-Q"                       
expo$Code[expo$Provincia=="Río Negro"]<-"AR-R"                        
expo$Code[expo$Provincia=="Salta"]<-"AR-A"                            
expo$Code[expo$Provincia=="San Juan "]<-"AR-J"                        
expo$Code[expo$Provincia=="San Luis"]<-"AR-D"                         
expo$Code[expo$Provincia=="Santa Cruz"]<-"AR-Z"                       
expo$Code[expo$Provincia=="Santa Fe"]<-"AR-S"                         
expo$Code[expo$Provincia=="Santiago del Estero"]<-"AR-G"              
expo$Code[expo$Provincia=="Tierra del Fuego"]<-"AR-V"                 
expo$Code[expo$Provincia=="Tucumán"]<-"AR-T"


save(expo,file="App LID/data/expo.Rda")


#### Remuneraciones

remunerac<-read.xlsx("Data Raw/Producto_02.xlsx",sheetIndex = 2, header=TRUE, colClasses=c("numeric","character",rep("numeric",70)), stringsAsFactors=FALSE)


names(remunerac)[1]<-"Ano"
names(remunerac)[2]<-"Provincia"

remunerac$Code<-NA
remunerac$Code[remunerac$Provincia=="Ciudad Aurtónoma de Buenos Aires "]<-"AR-C"
remunerac$Code[remunerac$Provincia=="Buenos Aires "]<-"AR-B"
remunerac$Code[remunerac$Provincia=="Catamarca"]<-"AR-K"
remunerac$Code[remunerac$Provincia=="Chaco"]<-"AR-H"                            
remunerac$Code[remunerac$Provincia=="Chubut"]<-"AR-U"                          
remunerac$Code[remunerac$Provincia=="Córdoba"]<-"AR-X"                          
remunerac$Code[remunerac$Provincia=="Corrientes"]<-"AR-W"                       
remunerac$Code[remunerac$Provincia=="Entre Ríos"]<-"AR-E"                       
remunerac$Code[remunerac$Provincia=="Formosa"]<-"AR-P"                          
remunerac$Code[remunerac$Provincia=="Jujuy"]<-"AR-Y"                            
remunerac$Code[remunerac$Provincia=="La Pampa"]<-"AR-L"                         
remunerac$Code[remunerac$Provincia=="La Rioja"]<-"AR-F"                        
remunerac$Code[remunerac$Provincia=="Mendoza"]<-"AR-M"                         
remunerac$Code[remunerac$Provincia=="Misiones"]<-"AR-N"                         
remunerac$Code[remunerac$Provincia=="Neuquén"]<-"AR-Q"                       
remunerac$Code[remunerac$Provincia=="Río Negro"]<-"AR-R"                        
remunerac$Code[remunerac$Provincia=="Salta"]<-"AR-A"                            
remunerac$Code[remunerac$Provincia=="San Juan "]<-"AR-J"                        
remunerac$Code[remunerac$Provincia=="San Luis"]<-"AR-D"                         
remunerac$Code[remunerac$Provincia=="Santa Cruz"]<-"AR-Z"                       
remunerac$Code[remunerac$Provincia=="Santa Fe"]<-"AR-S"                         
remunerac$Code[remunerac$Provincia=="Santiago del Estero"]<-"AR-G"              
remunerac$Code[remunerac$Provincia=="Tierra del Fuego"]<-"AR-V"                 
remunerac$Code[remunerac$Provincia=="Tucumán"]<-"AR-T"


save(remunerac,file="App LID/data/remunerac.Rda")


#Tasa de Actividad

pea<-read.xlsx("Data Raw/Producto_02.xlsx",sheetIndex = 4, header=TRUE, colClasses=c("numeric","character",rep("numeric",12)), stringsAsFactors=FALSE)



pea<-na.omit(pea)

names(pea)[1]<-"Ano"
names(pea)[2]<-"Provincia"
names(pea)[3]<-"PEA"

pea$Code<-NA
pea$Code[pea$Provincia=="Ciudad Aurtónoma de Buenos Aires "]<-"AR-C"
pea$Code[pea$Provincia=="Buenos Aires "]<-"AR-B"
pea$Code[pea$Provincia=="Catamarca"]<-"AR-K"
pea$Code[pea$Provincia=="Chaco"]<-"AR-H"                            
pea$Code[pea$Provincia=="Chubut"]<-"AR-U"                          
pea$Code[pea$Provincia=="Córdoba"]<-"AR-X"                          
pea$Code[pea$Provincia=="Corrientes"]<-"AR-W"                       
pea$Code[pea$Provincia=="Entre Ríos"]<-"AR-E"                       
pea$Code[pea$Provincia=="Formosa"]<-"AR-P"                          
pea$Code[pea$Provincia=="Jujuy"]<-"AR-Y"                            
pea$Code[pea$Provincia=="La Pampa"]<-"AR-L"                         
pea$Code[pea$Provincia=="La Rioja"]<-"AR-F"                        
pea$Code[pea$Provincia=="Mendoza"]<-"AR-M"                         
pea$Code[pea$Provincia=="Misiones"]<-"AR-N"                         
pea$Code[pea$Provincia=="Neuquén"]<-"AR-Q"                       
pea$Code[pea$Provincia=="Río Negro"]<-"AR-R"                        
pea$Code[pea$Provincia=="Salta"]<-"AR-A"                            
pea$Code[pea$Provincia=="San Juan "]<-"AR-J"                        
pea$Code[pea$Provincia=="San Luis"]<-"AR-D"                         
pea$Code[pea$Provincia=="Santa Cruz"]<-"AR-Z"                       
pea$Code[pea$Provincia=="Santa Fe"]<-"AR-S"                         
pea$Code[pea$Provincia=="Santiago del Estero"]<-"AR-G"              
pea$Code[pea$Provincia=="Tierra del Fuego"]<-"AR-V"                 
pea$Code[pea$Provincia=="Tucumán"]<-"AR-T"


save(pea,file="App LID/data/pea.Rda")


#Tasa de Actividad

pea<-read.xlsx("Data Raw/Producto_02.xlsx",sheetIndex = 3, header=TRUE, colClasses=c("numeric","character",rep("numeric",12)), stringsAsFactors=FALSE)



pea<-na.omit(pea)



names(pea)[1]<-"Ano"
names(pea)[2]<-"Provincia"
names(pea)[3]<-"Actividad.Total"
names(pea)[4]<-"Actividad.Mujeres"
names(pea)[5]<-"Actividad.Hombres"
names(pea)[6]<-"Actividad.Brecha"
names(pea)[7]<-"Empleo.Total"
names(pea)[8]<-"Empleo.Mujeres"
names(pea)[9]<-"Empleo.Hombres"
names(pea)[10]<-"Empleo.Brecha"
names(pea)[11]<-"Desocup.Total"
names(pea)[12]<-"Desocup.Mujeres"
names(pea)[13]<-"Desocup.Hombres"
names(pea)[14]<-"Desocup.Brecha"

pea$Code<-NA
pea$Code[pea$Provincia=="Ciudad Aurtónoma de Buenos Aires "]<-"AR-C"
pea$Code[pea$Provincia=="Buenos Aires "]<-"AR-B"
pea$Code[pea$Provincia=="Catamarca"]<-"AR-K"
pea$Code[pea$Provincia=="Chaco"]<-"AR-H"                            
pea$Code[pea$Provincia=="Chubut"]<-"AR-U"                          
pea$Code[pea$Provincia=="Córdoba"]<-"AR-X"                          
pea$Code[pea$Provincia=="Corrientes"]<-"AR-W"                       
pea$Code[pea$Provincia=="Entre Ríos"]<-"AR-E"                       
pea$Code[pea$Provincia=="Formosa"]<-"AR-P"                          
pea$Code[pea$Provincia=="Jujuy"]<-"AR-Y"                            
pea$Code[pea$Provincia=="La Pampa"]<-"AR-L"                         
pea$Code[pea$Provincia=="La Rioja"]<-"AR-F"                        
pea$Code[pea$Provincia=="Mendoza"]<-"AR-M"                         
pea$Code[pea$Provincia=="Misiones"]<-"AR-N"                         
pea$Code[pea$Provincia=="Neuquén"]<-"AR-Q"                       
pea$Code[pea$Provincia=="Río Negro"]<-"AR-R"                        
pea$Code[pea$Provincia=="Salta"]<-"AR-A"                            
pea$Code[pea$Provincia=="San Juan "]<-"AR-J"                        
pea$Code[pea$Provincia=="San Luis"]<-"AR-D"                         
pea$Code[pea$Provincia=="Santa Cruz"]<-"AR-Z"                       
pea$Code[pea$Provincia=="Santa Fe"]<-"AR-S"                         
pea$Code[pea$Provincia=="Santiago del Estero"]<-"AR-G"              
pea$Code[pea$Provincia=="Tierra del Fuego"]<-"AR-V"                 
pea$Code[pea$Provincia=="Tucumán"]<-"AR-T"


save(pea,file="App LID/data/pea.Rda")
