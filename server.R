library(shiny)
library(ggplot2)
load("Data/Weather.Rda")

Weather$EST <- (as.Date(Weather$EST, "%m/%d/%Y"))
dataset <- Weather
CityFactor <- factor(Weather$City)

# Define server logic required to plot various variables against Cities
shinyServer(function(input, output){
  # Compute the forumla text in a reactive expression since it is 
  # shared by the output$caption and output$mpgPlot expressions
    FormulaText <- reactive({
      paste ("dat~", input$id3)
    })
  #Subset data based on city selected  
    var <- reactive({
    subsetTest <- subset(Weather, Weather$City=={input$id2})
    })
  
    # Return the formula text for printing as a caption
    output$caption <- renderText({
      FormulaText()
    })
    output$oid1 <- renderPrint({input$id2})
    output$oid2 <- renderPrint({input$id3})
     output$odate <- renderPrint({input$date})
    # Generate a plot of the requested variable against mpg and only 
    # include outliers if requested
    
    output$oplot <- renderPlot({
      p <- ggplot(data=var(), aes_string("EST", input$id3))+ 
          geom_line() + scale_x_date()
      if (input$color != 'None')
        p <- p + aes_string(color=input$color)
      print(p)
    })
})
#aes(colour=(var()$City))