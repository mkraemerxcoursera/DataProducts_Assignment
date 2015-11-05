library(shiny)
library(datasets)
fit <- lm(mpg ~ wt, data = mtcars)

shinyServer(
    function(input, output) {
        output$oWeight <- renderPrint({input$weight})
        output$oPredictedMpg <- renderPrint({predict(fit, data.frame(wt = input$weight))})
    }
)