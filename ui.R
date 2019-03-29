## Shiny user interface

ui <- fluidPage(
  titlePanel(title = "População de Vancouver em 2016"),
                          fluidRow(
                            column(12, offset = 1, HTML("<h3>App Shiny</h3>"))
                          ),
                          fluidRow(
                            column(5, offset = 1, br(),
                                   ## the caption goes here
                                   # htmlOutput("caption"),
                                   ## add in the leaflet map
                                   leafletOutput("popn_map", height = "500px"),
                                   br()# add a break
                                   ),
                            fluidRow(
                              column(5, 
                                     plotOutput("popn_plot"),
                                     htmlOutput("plot_title"))
                            )
                          )
)
                 
