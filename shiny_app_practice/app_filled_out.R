library(shiny)
library(ggplot2)

# Define UI for application -----
ui <- fluidPage(

    # Application title
    titlePanel("Iris data shiny app"),

    # Sidebar -----
    sidebarLayout(
        sidebarPanel(
            HTML('</p> test for libraries Shiny workshop</p>'),
        ),

        # Main pannel -----
        mainPanel(
            ## how users will decide what iris spcies to plot
            selectInput('Species',
                        label="chosen iris", ## what to call the input display for people
                        choices=c(iris$Species)), ## get the list of species available in the iris dataframe),
            
            ## plot showing the correlation between sepal length and width
            plotOutput("corrplot"),
        ), ## end of main pannel
        ), ## end of sidebar
) ## end of ui

## note the commas at the end of the sections within the ui!!!
          

# Define server logic -----
server <- function(input, output) {
    output$corrplot <- renderPlot({
       
         ##this is where you only keep the iris species selected in the dropdown menu to make the plot
         subsettoplot = subset(iris, Species == input$Species)
         
         ## this is where the plot is rendered 
         ggplot(subsettoplot, aes(x=Sepal.Length, y = Sepal.Width))+
             geom_point()}
    )
}

# Run the application -----
shinyApp(ui = ui, server = server)
