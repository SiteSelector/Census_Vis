library(shiny)

shinyUI(fluidPage(
  titlePanel("CensusVis"),
   sidebarLayout(
    sidebarPanel(
      h6("Create demographic maps with information from the 2010 US Census"),
      #h4("Choose a variable to display"),
      selectInput("var", label = h4("Choose a variable to display"), # select = var
                  choices = c("Percent White", "Percent Black", 
                                 "Percent Hispanic", "Percent Asian")),
      #h4("Range of Interest:")
      sliderInput("range", label = h4("Range of interest"), min = 0, 
                  max = 100, value = c(0,100))  #slider1 = range, value = vector of 2 
      ),
    mainPanel(
      textOutput("text1"), #takes 1 argument: character string that uses as name of reactive element
      textOutput("text2"),
      plotOutput("map")
      
    )
  )
))