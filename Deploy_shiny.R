shiny::runGitHub('App-LID', 'ignaciomsarmiento')

require("devtools")
#devtools::install_github('rstudio/shinyapps')
library(shinyapps)
shinyapps::setAccountInfo(name='ikisarmiento', token='22FAA6B355CE50BA35494540ED44F559', secret='PpHifv8sxC9w5HOHb8OaXnlYSkBK1XmXokFPuUwq')
setwd("/Users/IKI/Dropbox/Phd Illinois/Work with Pedro/Shiny/Shiny App LID/App LID")
list.files()
deployApp(appName="App-LID")
