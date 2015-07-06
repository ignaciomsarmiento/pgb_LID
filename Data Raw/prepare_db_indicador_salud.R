#Prepare data

rm(list = ls())
require(xlsx)

setwd("/Users/IKI/Dropbox/Phd\ Illinois/Work\ with\ Pedro/Shiny/Shiny App LID/PGB")
list.files("Data Raw")
list.files("App LID/data")

rankings<-read.xlsx("Data Raw/Indicador Salud_prepara_db.xls",sheetIndex = 1)

rankings<-rankings[-c(25,26,27),]




                                                            
names(rankings)<-c( "Provincia", "Z.Score.E", "Rank.E", "Z.score.A", "Indicadores de Salud", "Z.Score.E.1", "Rank.E.1", "Z.score.B", "Comportamientos de Salud", "Z.score.C", "Cuidados Clínicos", "Z.score.D", "Socio Económicos")
  
#Turn into strings the name of provinces
rankings$Provincia<-as.character(rankings$Provincia)
class(rankings$Provincia)


#Asign codes for maps
rankings$Code<-NA
rankings$Code[rankings$Provincia=="Ciudad Autónoma de Buenos Aires"]<-"AR-C"
rankings$Code[rankings$Provincia=="Buenos Aires"]<-"AR-B"
rankings$Code[rankings$Provincia=="Catamarca"]<-"AR-K"
rankings$Code[rankings$Provincia=="Chaco"]<-"AR-H"                            
rankings$Code[rankings$Provincia=="Chubut"]<-"AR-U"                          
rankings$Code[rankings$Provincia=="Córdoba"]<-"AR-X"                          
rankings$Code[rankings$Provincia=="Corrientes"]<-"AR-W"                       
rankings$Code[rankings$Provincia=="Entre Ríos"]<-"AR-E"                       
rankings$Code[rankings$Provincia=="Formosa"]<-"AR-P"                          
rankings$Code[rankings$Provincia=="Jujuy"]<-"AR-Y"                            
rankings$Code[rankings$Provincia=="La Pampa"]<-"AR-L"                         
rankings$Code[rankings$Provincia=="La Rioja"]<-"AR-F"                        
rankings$Code[rankings$Provincia=="Mendoza"]<-"AR-M"                         
rankings$Code[rankings$Provincia=="Misiones"]<-"AR-N"                         
rankings$Code[rankings$Provincia=="Neuquén"]<-"AR-Q"                       
rankings$Code[rankings$Provincia=="Río Negro"]<-"AR-R"                        
rankings$Code[rankings$Provincia=="Salta"]<-"AR-A"                            
rankings$Code[rankings$Provincia=="San Juan"]<-"AR-J"                        
rankings$Code[rankings$Provincia=="San Luis"]<-"AR-D"                         
rankings$Code[rankings$Provincia=="Santa Cruz"]<-"AR-Z"                       
rankings$Code[rankings$Provincia=="Santa Fe"]<-"AR-S"                         
rankings$Code[rankings$Provincia=="Santiago del Estero"]<-"AR-G"              
rankings$Code[rankings$Provincia=="Tierra del Fuego, Antártida e Islas del Atlántico Sur"]<-"AR-V"                 
rankings$Code[rankings$Provincia=="Tucumán"]<-"AR-T"


list.files("data/")
save(rankings,file="data/rankings.Rda")
