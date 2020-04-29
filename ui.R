library(shiny)
shinyUI(fluidPage(
    titlePanel("Number of Kilometers Traveled x Vehicle Number"),
    sidebarLayout(
        sidebarPanel(
            sliderInput("bins",
                        "Number of bins:",
                        min = 1,
                        max = 50,
                        value = 30)
        ),
        mainPanel(
            plotOutput("distPlot")
        )
    )
))
