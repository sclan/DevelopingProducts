library(shiny)
library(caret)
shinyUI (
  pageWithSidebar (
    # Application title
    headerPanel ("Predict Your Vehicle's MPG based on the 'mtcars' dataset from 32 1973-74 models"),
    
    sidebarPanel (
      numericInput('cyl', 'Number of cylinders, 4,6,8', 4, min = 4, max= 8, step = 2),
      numericInput('hp', 'Horsepower (hp, 50-300hp)', 93, min=50, max=300, step = 10),
      numericInput('wt', 'Weight (lb/1000, 5000lb max)', 3, min = 1, max= 5, step = .05),
      numericInput('am', 'Transmission (0:auto; 1:manual)', 1, min = 0, max= 1, step = 1),
      numericInput('gear', 'Number of gears (3,4,5)', 4, min=3, max=5, step=1),
      submitButton('Submit')
      ),
    mainPanel (
      h3 ('Results of prediction'),
      h4 ('Your Vehicle\'s Predicted MPG:'),
      textOutput("prediction")
      )
    )

)