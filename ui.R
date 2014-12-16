#' Data from www.wunderground.com from 
#' Dec 9 2013 to Dec 9 2014
#' 
#' 
library(shiny)
load("Data/Weather.Rda")
dataset <- Weather
CityFactor <- levels(factor(Weather$City))

shinyUI(pageWithSidebar(
  headerPanel("Weather History"),
  sidebarPanel(
    helpText("Determine Weather pattern for multiple US cities over 2013."),
    
      checkboxGroupInput("id2", "City", CityFactor, selected="Boston"),
      selectInput("id3", "Factor", names(dataset),selected="Mean.TemperatureF"),
      selectInput('color', 'Color', c('None', "City"), selected="City"),
      dateInput("date", "Date:"),
    p("Documentation:",a("CourseProject",href="readme.html"))
    
  ),
  mainPanel(
    
      h3('Your inputs'),
      #h3(textOutput("caption")),
      h4('You entered the following city(ies)'),
      verbatimTextOutput("oid1"),
      h4('You entered the following weather variable'),
      verbatimTextOutput("oid2"),
#       h4('You entered'),
#       verbatimTextOutput("odate"),
      h3('Your plot'),
      plotOutput("oplot")
      
  )
))


