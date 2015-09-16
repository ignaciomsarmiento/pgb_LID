require(shiny)

#Color green: rgb(63, 173, 70)
#
#HTML("<a href='http://lid.maimonides.edu/'><img style='float: left; margin-right:5px; width: 100px;' src='lid-logo.png' /></a")
shinyUI(navbarPage(img(src = "lid-logo.png" ), theme="theme.css", 
                   tabPanel("Salud",
                            h2("La Salud en las Provincias Argentinas"),
                            br(),
                            p("El Laboratorio de Ideas en Desarrollo - LiD,  se dedica a la investigación y difusión de ideas para promover el desarrollo equitativo y sostenible, combinando análisis riguroso y multidisciplinario para generar intervenciones que tengan alto impacto social con el objetivo de alcanzar un desarrollo social y económico equitativo, inclusivo y sostenible."),
                            tabsetPanel(
                              tabPanel("Inicio",                            
                                       sidebarLayout(
                                         sidebarPanel( width=3,
                                           tags$head(
                                             tags$style(type="text/css", "select"),
                                             tags$style(type="text/css", ".span4"),
                                             tags$style(type="text/css",  ".well {background-color: #3FAD46:
                                                        ; }")),
                                           tags$div(class="header", checked=NA,
                                                    tags$h4("Indice", align="center"),
                                                    br(),
                                                    div(id="Rankings",tags$a("Rankings")),
                                                    br()
                                                    
                                           )
                                             ),
                                         mainPanel(list(h3("El INDICADOR SINTETICO DE SALUD PROVINCIAL LiD", align="center"), 
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
                                                        p("6)	La información base, el INDICADOR SINTETICO DE SALUD LiD, así como los dos indicadores correspondientes, INDICADOR DE RESULTADOS DE SALUD E INDICADOR DE FACTORES DE SALUD y el indicador estarán disponibles en la base del Lid y podrán observarse a través de mapas temáticos y cuadros comparativos."),
                                                        p("6)	La información base, el INDICADOR SINTETICO DE SALUD LiD, así como los dos indicadores correspondientes, INDICADOR DE RESULTADOS DE SALUD E INDICADOR DE FACTORES DE SALUD y el indicador estarán disponibles en la base del Lid y podrán observarse a través de mapas temáticos y cuadros comparativos."),
                                                        p("Para mas detalle sobre el Indicador de Salud haga", tags$a(href = 'https://www.dropbox.com/s/2dwpi34jezdje71/WP_03_RANKING_SALUD_Pre01.pdf?dl=0',  target="_blank",  'click aqui', icon("download")))
                                                        
                                         ))
                              )),
                              tabPanel("Rankings",
                                       sidebarLayout(
                                         sidebarPanel(width=3,
                                           tags$head(
                                             tags$style(type="text/css", "select"),
                                             tags$style(type="text/css", ".span4"),
                                             tags$style(type="text/css",  ".well {background-color: #3FAD46; }")),
                                             selectInput('variable', 
                                                       label = "Escoja un ordenamiento",
                                                       choices = list("Indicadores de Salud", 
                                                                      "Comportamientos de Salud",
                                                                      "Cuidados Clínicos",
                                                                      "Socio Económicos"), 
                                                                      selected = "Indicadores de Salud")
                                           ),
                                         mainPanel(list(h3("Rankings", align="center"), 
                                                        p("En el panel de la izquierda usted puede elegir como ordenar a las provincias y a continuación se visualizará el contenido",
                                                          br(),
                                                          tags$ol(
                                                            tags$li("Indicadores de Salud"), 
                                                            tags$li("Comportamientos de Salud"), 
                                                            tags$li("Cuidados Clínicos"),
                                                            tags$li("Socio Económicos")
                                                          ),
                                                          p("Para mas detalle sobre el Indicador de Salud haga", tags$a(href = 'https://www.dropbox.com/s/2dwpi34jezdje71/WP_03_RANKING_SALUD_Pre01.pdf?dl=0',  target="_blank",  'click aqui', icon("download")))
                                                          )),htmlOutput("mapa_salud"), dataTableOutput(outputId="tabla_ranks"))
                                       ), 
                                       HTML("<script>$('#Rankings').click(function() {
						                                tabs = $('.tabbable .nav.nav-tabs li')
                                        tabs.each(function() {
                                        $(this).removeClass('active')
                                        })
                                        $(tabs[1]).addClass('active')

                                        tabsContents = $('.tabbable .tab-content .tab-pane')
                                        tabsContents.each(function() {
                                        $(this).removeClass('active')
                                        })
                                        $(tabsContents[1]).addClass('active')

                                        $('#Rankings').trigger('change').trigger('shown');

                                        })</script>")
                                       )
                              
                            )), #Salud Finishes
                   tabPanel("PBG",
                            h2("Producto Bruto Geográfico de Argentina"),
                            br(),
                            p("El Laboratorio de Ideas en Desarrollo - LiD,  se dedica a la investigación y difusión de ideas para promover el desarrollo equitativo y sostenible, combinando análisis riguroso y multidisciplinario para generar intervenciones que tengan alto impacto social con el objetivo de alcanzar un desarrollo social y económico equitativo, inclusivo y sostenible."),
                              tabsetPanel(
                                tabPanel("Inicio",                            
                                         sidebarLayout(
                                           sidebarPanel( width=3,
                                                         tags$head(
                                                           tags$style(type="text/css", "select"),
                                                           tags$style(type="text/css", ".span4"),
                                                           tags$style(type="text/css",  ".well {background-color: #3FAD46:
                                                                      ; }")),
                                                         tags$div(class="header", checked=NA,
                                                                  tags$h4("Indice", align="center"),
                                                                  br(),
                                                                  div(id="Composicion",tags$a("Composición")),
                                                                  br(),
                                                                  div(id="Evolucion",tags$a("Evolución")),
                                                                  br(),
                                                                  div(id="Comparacion",tags$a("Comparación")),
                                                                  br(),
                                                                  div(id="Mapas",tags$a("Mapas")),
                                                                  br()
                                                                  
                                                         )
                                                           ),
                                           mainPanel(list(h3("Producto Bruto Geográfico LiD", align="center"), 
                                                          br(),
                                                          p("En esta pagina usted podra explorar distintos aspectos relacionados al Producto Bruto Geografico de las Provincias Argentinas"),
                                                          p("Usted podrá hacer comparaciones entre provincias para un dado momento de tiempo y a través del tiempo"))
                                ))
                                ),
                            tabPanel("Composición",
                                     sidebarLayout(
                                       sidebarPanel(
                                         selectInput("year", 
                                                     label = "Escoja un Año",
                                                     choices = list("2000"=2000,
                                                                    "2001"=2001,
                                                                    "2002"=2002,
                                                                    "2003"=2003,
                                                                    "2004"=2004,
                                                                    "2005"=2005,
                                                                    "2006"=2006,
                                                                    "2007"=2007,
                                                                    "2008"=2008,
                                                                    "2009"=2009,
                                                                    "2010"=2010,
                                                                    "2011"=2011,
                                                                    "2012"=2012,
                                                                    "2013"=2013,
                                                                    "2014"=2014),
                                                     selected = 2000
                                         ),
                                         selectInput("provincia", 
                                                     label = "Elija una Provincia",
                                                     choices = list("Ciudad Autónoma de Buenos Aires"="AR-C",
                                                                    "Buenos Aires"="AR-B",
                                                                    "Catamarca"="AR-K",
                                                                    "Cordoba"="AR-X",
                                                                    "Corrientes"="AR-W",
                                                                    "Chaco"="AR-H",
                                                                    "Chubut"="AR-U",
                                                                    "Entre Rios"="AR-E",
                                                                    "Formosa"="AR-P",
                                                                    "Jujuy"="AR-Y",
                                                                    "La Pampa"="AR-L",
                                                                    "La Rioja"="AR-F",
                                                                    "Mendoza"="AR-M",
                                                                    "Misiones"="AR-N",
                                                                    "Neuquen"="AR-Q",
                                                                    "Rio Negro"="AR-R",
                                                                    "Salta"="AR-A",
                                                                    "San Juan"="AR-J",
                                                                    "San Luis"="AR-D",
                                                                    "Santa Cruz"="AR-Z",
                                                                    "Santa Fe"="AR-S",
                                                                    "Santiago del Estero"="AR-G",
                                                                    "Tucuman"="AR-T",
                                                                    "Tierra del Fuego"="AR-V",
                                                                    "Malvinas"="FK"),
                                                     selected = "AR-B"
                                         )
                                       ),
                                       mainPanel(list(h3("Composición del Producto Bruto Geografico"), p("En estos graficos de torta usted puede observar la composición del PBG de la provincia seleccionada para el año seleccionado ")), htmlOutput("piechart"), p("Nota: Si no se produce un grafico es porque no hay datos disponibles"))
                                       ),
                                       HTML("<script>$('#Composicion').click(function() {
                                        tabs = $('.tabbable .nav.nav-tabs li')
                                        tabs.each(function() {
                                        $(this).removeClass('active')
                                        })
                                        $(tabs[3]).addClass('active')

                                        tabsContents = $('.tabbable .tab-content .tab-pane')
                                        tabsContents.each(function() {
                                        $(this).removeClass('active')
                                        })
                                        $(tabsContents[3]).addClass('active')

                                        $('#Composicion').trigger('change').trigger('shown');

                                        })</script>")
                                     ),
                            tabPanel("Evolución",
                                     sidebarLayout(
                                       sidebarPanel(
                                         selectInput("provincia2", 
                                                     label = "Elija una Provincia",
                                                     choices = list("Ciudad Autónoma de Buenos Aires"="AR-C",
                                                                    "Buenos Aires"="AR-B",
                                                                    "Catamarca"="AR-K",
                                                                    "Cordoba"="AR-X",
                                                                    "Corrientes"="AR-W",
                                                                    "Chaco"="AR-H",
                                                                    "Chubut"="AR-U",
                                                                    "Entre Rios"="AR-E",
                                                                    "Formosa"="AR-P",
                                                                    "Jujuy"="AR-Y",
                                                                    "La Pampa"="AR-L",
                                                                    "La Rioja"="AR-F",
                                                                    "Mendoza"="AR-M",
                                                                    "Misiones"="AR-N",
                                                                    "Neuquen"="AR-Q",
                                                                    "Rio Negro"="AR-R",
                                                                    "Salta"="AR-A",
                                                                    "San Juan"="AR-J",
                                                                    "San Luis"="AR-D",
                                                                    "Santa Cruz"="AR-Z",
                                                                    "Santa Fe"="AR-S",
                                                                    "Santiago del Estero"="AR-G",
                                                                    "Tucuman"="AR-T",
                                                                    "Tierra del Fuego"="AR-V",
                                                                    "Malvinas"="FK"),
                                                     selected = "AR-B"
                                         ),
                                         checkboxGroupInput(inputId="variable2", 
                                                            label = "Escoja una Variable",
                                                            choices = list("PBG a precios de mercado"="PBG.a.precios.de.mercado..aproximados..",
                                                                           "PBG a precios de productor"="PBG.a.precios.de.productor.",
                                                                           "Agricultura ganadería caza y silvicultura"="A..Agricultura..ganadería..caza.y.silvicultura",
                                                                           "Pesca y servicios conexos"="Pesca.y.servicios.conexos",
                                                                           "Explotación de minas y canteras"="Explotación.de.minas.y.canteras",
                                                                           "Industria Manufacturera"="Industria.Manufacturera",
                                                                           "Electricidad gas y agua"="Electricidad..gas.y.agua",
                                                                           "Construcción",
                                                                           "Sectores productores de servicios"="Sectores.productores.de.servicios",
                                                                           "Comercio al por mayor al por menor y reparaciones"="Comercio.al.por.mayor..al.por.menor.y.reparaciones",
                                                                           "Servicios de hotelería y restaurantes"="Servicios.de.hotelería.y.restaurantes",
                                                                           "Servicio de transporte de almacenamiento y de comunicaciones" ="Servicio.de.transporte..de.almacenamiento.y.de.comunicaciones",
                                                                           "Intermediación financiera y otros servicios financieros"="Intermediación.financiera.y.otros.servicios.financieros",
                                                                           "Servicios inmobiliarios empresariales y de alquiler"="Servicios.inmobiliarios..empresariales.y.de.alquiler",
                                                                           "Administración pública defensa y seguridad social obligatoria"="Administración.pública..defensa.y.seguridad.social.obligatoria",
                                                                           "Enseñanza",                                                     
                                                                           "Servicios sociales y de salud"="Servicios.sociales.y.de.salud",
                                                                           "Servicios comunitarios sociales y personales"="Servicios.comunitarios..sociales.y.personales.n.c.p.",
                                                                           "Servicios de hogares privados que contratan servicio doméstico"="Servicios.de.hogares.privados.que.contratan.servicio.doméstico"),
                                                            selected = "PBG.a.precios.de.mercado..aproximados.."
                                         )
                                       ),
                                       mainPanel(list(h3("Evolución del Producto Bruto Geografico"), p("En estos graficos usted puede observar la evolución del PBG y sus componentes ")), htmlOutput("linechart"), p("Nota: Si no se produce un grafico es porque no hay datos disponibles"))
                                     ),
                                     HTML("<script>$('#Evolucion').click(function() {
                                        tabs = $('.tabbable .nav.nav-tabs li')
                                        tabs.each(function() {
                                        $(this).removeClass('active')
                                        })
                                        $(tabs[4]).addClass('active')

                                        tabsContents = $('.tabbable .tab-content .tab-pane')
                                        tabsContents.each(function() {
                                        $(this).removeClass('active')
                                        })
                                        $(tabsContents[4]).addClass('active')

                                        $('#Evolucion').trigger('change').trigger('shown');

                                        })</script>")
                            ),
                            tabPanel("Comparación",
                                     sidebarLayout(
                                       sidebarPanel(
                                         selectInput("variable3", 
                                                     label = "Escoja una Variable",
                                                     choices = list("PBG a precios de mercado"="PBG.a.precios.de.mercado..aproximados..",
                                                                    "PBG a precios de productor"="PBG.a.precios.de.productor.",
                                                                    "Agricultura ganadería caza y silvicultura"="A..Agricultura..ganadería..caza.y.silvicultura",
                                                                    "Pesca y servicios conexos"="Pesca.y.servicios.conexos",
                                                                    "Explotación de minas y canteras"="Explotación.de.minas.y.canteras",
                                                                    "Industria Manufacturera"="Industria.Manufacturera",
                                                                    "Electricidad gas y agua"="Electricidad..gas.y.agua",
                                                                    "Construcción",
                                                                    "Sectores productores de servicios"="Sectores.productores.de.servicios",
                                                                    "Comercio al por mayor al por menor y reparaciones"="Comercio.al.por.mayor..al.por.menor.y.reparaciones",
                                                                    "Servicios de hotelería y restaurantes"="Servicios.de.hotelería.y.restaurantes",
                                                                    "Servicio de transporte de almacenamiento y de comunicaciones" ="Servicio.de.transporte..de.almacenamiento.y.de.comunicaciones",
                                                                    "Intermediación financiera y otros servicios financieros"="Intermediación.financiera.y.otros.servicios.financieros",
                                                                    "Servicios inmobiliarios empresariales y de alquiler"="Servicios.inmobiliarios..empresariales.y.de.alquiler",
                                                                    "Administración pública defensa y seguridad social obligatoria"="Administración.pública..defensa.y.seguridad.social.obligatoria",
                                                                    "Enseñanza",                                                     
                                                                    "Servicios sociales y de salud"="Servicios.sociales.y.de.salud",
                                                                    "Servicios comunitarios sociales y personales"="Servicios.comunitarios..sociales.y.personales.n.c.p.",
                                                                    "Servicios de hogares privados que contratan servicio doméstico"="Servicios.de.hogares.privados.que.contratan.servicio.doméstico"),
                                                     selected = "PBG.a.precios.de.mercado..aproximados.."
                                         ),
                                         checkboxGroupInput("provincia3", 
                                                            label = "Elija una Provincia",
                                                            choices = list("Ciudad Autónoma de Buenos Aires"="Ciudad.Aurtónoma.de.Buenos.Aires.",
                                                                           "Buenos Aires"="Buenos.Aires.",
                                                                           "Catamarca",
                                                                           "Cordoba",
                                                                           "Corrientes",
                                                                           "Chaco",
                                                                           "Chubut",
                                                                           "Entre Rios"="Entre.Ríos",
                                                                           "Formosa",
                                                                           "Jujuy",
                                                                           "La Pampa"="La.Pampa",
                                                                           "La Rioja"="La.Rioja",
                                                                           "Mendoza",
                                                                           "Misiones",
                                                                           "Neuquen",
                                                                           "Rio Negro"="Río.Negro",
                                                                           "Salta",
                                                                           "San Juan"="San.Juan.",
                                                                           "San Luis"="San.Luis",
                                                                           "Santa Cruz"="Santa.Cruz",
                                                                           "Santa Fe"= "Santa.Fe",
                                                                           "Santiago del Estero"="Santiago.del.Estero",
                                                                           "Tucuman"="Tucumán",
                                                                           "Tierra del Fuego"="Tierra.del.Fuego",
                                                                           "Malvinas"="FK"),
                                                            selected = "Chubut"
                                         )
                                       ),
                                       mainPanel(list(h3("Comparación del Producto Bruto Geografico"), p("En estos graficos usted puede comparar la evolución del PBG y sus componentes por provincia ")), htmlOutput("linechartcomp"), p("Nota: Si no se produce un grafico es porque no hay datos disponibles"))
                                     ),
                                     HTML("<script>$('#Comparacion').click(function() {
                                        tabs = $('.tabbable .nav.nav-tabs li')
                                          tabs.each(function() {
                                          $(this).removeClass('active')
                                          })
                                          $(tabs[5]).addClass('active')
                                          
                                          tabsContents = $('.tabbable .tab-content .tab-pane')
                                          tabsContents.each(function() {
                                          $(this).removeClass('active')
                                          })
                                          $(tabsContents[5]).addClass('active')
                                          
                                          $('#Comparacion').trigger('change').trigger('shown');
                                          
                                          })</script>")
                            ),
                            tabPanel("Mapas",
                                     sidebarLayout(
                                       sidebarPanel(
                                         selectInput("year_map", 
                                                     label = "Escoja un Año",
                                                     choices = list("2000"=2000,
                                                                    "2001"=2001,
                                                                    "2002"=2002,
                                                                    "2003"=2003,
                                                                    "2004"=2004,
                                                                    "2005"=2005,
                                                                    "2006"=2006,
                                                                    "2007"=2007,
                                                                    "2008"=2008,
                                                                    "2009"=2009,
                                                                    "2010"=2010,
                                                                    "2011"=2011,
                                                                    "2012"=2012,
                                                                    "2013"=2013,
                                                                    "2014"=2014),
                                                     selected = 2000
                                         ),
                                         selectInput("variable_map", 
                                                     label = "Escoja una Variable",
                                                     choices = list("PBG a precios de mercado"="PBG.a.precios.de.mercado..aproximados..",
                                                                    "PBG a precios de productor"="PBG.a.precios.de.productor.",
                                                                    "Agricultura ganadería caza y silvicultura"="A..Agricultura..ganadería..caza.y.silvicultura",
                                                                    "Pesca y servicios conexos"="Pesca.y.servicios.conexos",
                                                                    "Explotación de minas y canteras"="Explotación.de.minas.y.canteras",
                                                                    "Industria Manufacturera"="Industria.Manufacturera",
                                                                    "Electricidad gas y agua"="Electricidad..gas.y.agua",
                                                                    "Construcción",
                                                                    "Sectores productores de servicios"="Sectores.productores.de.servicios",
                                                                    "Comercio al por mayor al por menor y reparaciones"="Comercio.al.por.mayor..al.por.menor.y.reparaciones",
                                                                    "Servicios de hotelería y restaurantes"="Servicios.de.hotelería.y.restaurantes",
                                                                    "Servicio de transporte de almacenamiento y de comunicaciones" ="Servicio.de.transporte..de.almacenamiento.y.de.comunicaciones",
                                                                    "Intermediación financiera y otros servicios financieros"="Intermediación.financiera.y.otros.servicios.financieros",
                                                                    "Servicios inmobiliarios empresariales y de alquiler"="Servicios.inmobiliarios..empresariales.y.de.alquiler",
                                                                    "Administración pública defensa y seguridad social obligatoria"="Administración.pública..defensa.y.seguridad.social.obligatoria",
                                                                    "Enseñanza",                                                     
                                                                    "Servicios sociales y de salud"="Servicios.sociales.y.de.salud",
                                                                    "Servicios comunitarios sociales y personales"="Servicios.comunitarios..sociales.y.personales.n.c.p.",
                                                                    "Servicios de hogares privados que contratan servicio doméstico"="Servicios.de.hogares.privados.que.contratan.servicio.doméstico"),
                                                     selected = "PBG.a.precios.de.mercado..aproximados..")
                                       ),
                                       mainPanel(h3("Mapas"),htmlOutput("mapa"))
                                     ),
                                     HTML("<script>$('#Mapas').click(function() {
                                        tabs = $('.tabbable .nav.nav-tabs li')
                                        tabs.each(function() {
                                        $(this).removeClass('active')
                                        })
                                        $(tabs[6]).addClass('active')

                                        tabsContents = $('.tabbable .tab-content .tab-pane')
                                        tabsContents.each(function() {
                                        $(this).removeClass('active')
                                        })
                                        $(tabsContents[6]).addClass('active')

                                        $('#Mapas').trigger('change').trigger('shown');

                                        })</script>")
                            )
                            ) 
                   ),
                   tabPanel(HTML("</a></li><li><a href=\'http://lid.maimonides.edu/' target='_blank'>Volver al Sitio"))
                   
                  
                   ))
                            
                                    
  