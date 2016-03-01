# Two file apps: ui.R

if (!require("shiny"))
  install.packages('shiny')

shinyUI(fluidPage(
  h1("The R Datasets Package"),
  
  sidebarLayout(sidebarPanel(
    selectInput(
      "dataset","Choose a dataset:",
      choices = ls("package:datasets"),selected = "airquality"
    )
  ),
  
  mainPanel(
    tabsetPanel(
      type = "tabs",
      tabPanel("Content",verbatimTextOutput("dump")),
      tabPanel("Summary",verbatimTextOutput("summary")),
      tabPanel("Table",tableOutput("table")),
      tabPanel("PLot",plotOutput("plot"))
    )
  ))
))
