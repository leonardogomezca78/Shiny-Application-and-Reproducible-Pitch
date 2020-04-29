

library(shiny)
shinyServer(function(input, output) {
    output$distPlot <- renderPlot({
        nro_vehiculo    <- vehi1[, 3]
        bins <- seq(min(nro_vehiculo), max(nro_vehiculo), length.out = input$bins + 1)
        hist(nro_vehiculo, breaks = bins, border="white", col="darkorange")
        
    })
    
})


