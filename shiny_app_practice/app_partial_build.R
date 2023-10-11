library(shiny)
library(ggplot2)

# Define UI for application -----
ui <- fluidPage(

    # Application title
    titlePanel(),

    # Sidebar -----
    sidebarLayout(
        sidebarPanel(
            HTML(),
        ),

        # Main pannel -----
        mainPanel(
            ## how users will decide what iris spcies to plot
            selectInput(),
            
            ## plot showing the correlation between sepal length and width
            plotOutput(),
        ), ## end of main pannel
        ), ## end of sidebar
) ## end of ui

## note the commas at the end of the sections within the ui!!!
          

# Define server logic -----
server <- function(input, output) {}

# Run the application -----
shinyApp(ui = ui, server = server)
