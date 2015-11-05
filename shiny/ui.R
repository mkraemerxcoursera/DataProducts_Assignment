library(shiny)
shinyUI(fluidPage(
    titlePanel("Gas efficiency calculator for cars"),
    sidebarLayout(
        sidebarPanel(
            h4('The App'),
            h4('Documentation (see below)')
        ),
        mainPanel(
            h2("The useable app"),
            p("Here you can immediately start calculating predicted fuel efficiency of cars you might buy. Just enter their weight."),
            numericInput('weight', 'Weight of tempting car in tons', 1.4, min = 0.8, max = 4.5, step = 0.1),
            submitButton('Submit'),
            h3('Estimated mileage values'),
            h4('Weight of car'),
            verbatimTextOutput("oWeight"),
            h4('Predicted mpg'),
            verbatimTextOutput("oPredictedMpg"),
            h2("Documentation"),
            p("Based on a data set of popular cars in the US, it was figured out that fuel efficiency highly relates to the weight of the car. The data was used to fit a linear regression model which is used by this application to predict the mpg value for any car given its weight. Just enter the weight of the car in tons and you get back the mpg value.")
        )
    )
))