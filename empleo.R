tabPanel("Empleo",
         img(src = "lid.jpeg", align="right"),
         h3("Bienvenido a la pagina de estadisticas del Laboratorio de Ideas en Desarrollo"),
         p("En esta pagina usted podra explorar distintos aspectos relacionados al Empleo de las Provincias Argentinas"),
         p("Usted podrá hacer comparaciones entre provincias para un dado momento de tiempo y a través del tiempo"),
         p("Mas explicaciones"),
         
         tabsetPanel(
           tabPanel("Composición"),
           tabPanel("Evolución"),
           tabPanel("Comparación"),
           tabPanel("Mapas")
         )),