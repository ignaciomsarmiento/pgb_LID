require(shiny)

shinyUI(navbarPage("", theme="theme.css", 
                   
                   tabPanel("Salud",
                            img(src = "lid_2.png", align="right"),
                            h2("La Salud en las Provincias Argentinas"),
                            h3("INDICADOR SINTETICO DE SALUD PROVINCIAL- LiD"),
                            h4("El Laboratorio de Ideas en Desarrollo - LiD,  se dedica a la investigación y difusión de ideas para promover el desarrollo equitativo y sostenible, combinando análisis riguroso y multidisciplinario para generar intervenciones que tengan alto impacto social con el objetivo de alcanzar un desarrollo social y económico equitativo, inclusivo y sostenible."),
                            tabsetPanel(
                              sidebarLayout(
                                sidebarPanel(
                                  tags$head(
                                    tags$style(type="text/css", "select { max-width: 360px; }"),
                                    tags$style(type="text/css", ".span4 { max-width: 360px; }"),
                                    tags$style(type="text/css",  ".well { max-width: 360px; background-color: #2E8B57; }"),
                                    tags$div(class="header", checked=NA,
                                             tags$p("Ready to take the Shiny tutorial? If so"),
                                             tags$a(href="shiny.rstudio.com/tutorial", "Click Here!")
                                    )
                                  ),
                              
                              tabPanel("Sobre",
                                         mainPanel(list(h3("El INDICADOR SINTETICO DE SALUD PROVINCIAL", align="center"), 
br(),
p("1)	Recopila diversas medidas base de salud de la población a nivel provincial"),
br(),
p("(2)	La información es consistida y estandarizada para hacerla comparable entre unidades geográficas (provincias)"),
br(),
p("3)	Se calcula un INDICADOR SINTETICO DE SALUD de la Población a nivel provincial. El indicador se basa en un modelo teórico que desarrollado por el LiD en base a las metodologías en uso a nivel internacional y la disponibilidad de información de base en Argentina."),
br(),
p("4)	El INDICADOR SINTETICO DE SALUD se diseña de manera que su mejora relativa indique una mejor situación de salud de la población bajo análisis: si el indicador promedio mejora, estaría indicando que la salud de la población mejora. Los indicadores, adecuadamente ponderados y sistematizados con criterios técnicos, permiten comparar la salud de la población en las diferentes provincias."),
br(),
p("5)	El INDICADOR SINTETICO DE SALUD, se conforma por dos indicadores que usualmente se utilizan de forma separada, aunque se consideran posibles ponderaciones para generar un único indicador. Así, se considera un INDICADOR DE RESULTADOS DE SALUD, que pondera tanto la información de longitud y expectativa de vida como la calidad de la misma. Por otro lado, se calcula un INDICADOR DE FACTORES DE SALUD, que contempla aquellos factores de salud, comportamiento, ambiente, infraestructura socio económico, etc. que influyen críticamente en el estado de salud de la población."),
br(),
p("6)	La información base, el INDICADOR SINTETICO DE SALUD LiD, así como los dos indicadores correspondientes, INDICADOR DE RESULTADOS DE SALUD E INDICADOR DE FACTORES DE SALUD y el indicador estarán disponibles en la base del Lid y podrán observarse a través de mapas temáticos y cuadros comparativos."))
                                       )),
                              tabPanel("Composición"),
                              tabPanel("Evolución"),
                              tabPanel("Comparación"),
                              tabPanel("Mapas")
                            )))),
                   tabPanel("Nosotros",
                            img(src = "lid_2.png", align="right"),
                            h3("Bienvenido a la pagina de estadisticas del Laboratorio de Ideas en Desarrollo"),
                            p("El laboratorio de ideas ..."),
                            p("Este projecto fue diseñado usando R y Shiny bajo Licencia GPL V2") 
                   )
))
                            
                                    
  