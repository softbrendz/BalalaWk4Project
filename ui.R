
#http://rstudio.github.io/shiny/tutorial/#reactivity
library(shiny)

# Define UI for dataset viewer application
shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Iris Database App"),
 
  
  # Sidebar with controls to provide a caption, select a species of iris dataset, and 
  # specify the number of observations to view.
  sidebarPanel(
   # textInput("region", "Region:", "Data Summary"),
  
    numericInput("obs", "Number of observations to view:", 10),
    selectInput("species", "Species:",
                list("Setosa" = "setosa", 
                     "Versicolor" = "versicolor", 
                     "Virginica" = "virginica"))
  ),
  
  
  
  # Show the caption, a summary of the dataset and an HTML table with
  # the requested number of observations
  mainPanel(
    
    verbatimTextOutput("summary"), 
    h3(textOutput("species")),
    
    tableOutput("view"),
    plotOutput("irisPlot")
  )
))