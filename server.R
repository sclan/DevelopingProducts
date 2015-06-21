library(shiny)
library(caret)
data(mtcars)
modFit <- train(mpg ~ cyl + hp + wt + am + gear, method="glm", data=mtcars)
shinyServer(
  function(input, output) { 
    output$prediction <- renderPrint ({
      cyl = input$cyl
      hp = input$hp
      wt = input$wt
      am = input$am
      gear = input$gear
      predict(modFit,data.frame(cyl, hp, wt, am, gear))})
  }
)