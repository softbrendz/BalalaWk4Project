library(shiny)
library(datasets)

# Define server logic required to graph selected species of Iris
shinyServer(function(input, output) {
  


  # Generate a plot for iris dataset based on selected species
  
  output$irisPlot <- renderPlot({
    output$caption <- renderPrint({
      output$species <-  selectInput()
    })
    irisSub <- subset(iris, Species == input$species)
    par(mfrow=c(1,2))
    boxplot(irisSub, main= paste("Boxplot of ",input$species),ylim = c(0,8),las=2)
    hist(irisSub$Petal.Length,xlim=c(0,8),ylim=c(0,20))
   
 
    
    output$view <- renderTable({
    head(irisSub, n = input$obs)
      
    })
   })

  

})