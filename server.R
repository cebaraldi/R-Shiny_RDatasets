# Two file apps: server.R

if (!require("shiny"))
  install.packages('shiny')

shinyServer(function(input, output) {
  output$dump <- renderPrint({
    dataset <- get(input$dataset,"package:datasets",inherits = FALSE)
    str(dataset)
  })
  
  output$summary <- renderPrint({
    dataset <- get(input$dataset,"package:datasets",inherits = FALSE)
    summary(dataset)
  })
  
  output$table <- renderTable({
    dataset <- get(input$dataset,"package:datasets",inherits = FALSE)
    dataset
  })
  
  output$plot <- renderPlot({
    dataset <- get(input$dataset,"package:datasets",inherits = FALSE)
    plot(dataset)
  })
  
})
