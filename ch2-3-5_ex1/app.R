library(shiny)

ui <- fluidPage(
  verbatimTextOutput("summary"),
  textOutput("greeting"),
  verbatimTextOutput("ttest"),
  verbatimTextOutput("linreg")
)

server <- function(input, output, session) {
  output$summary <- renderPrint(summary(mtcars))
  output$greeting <- renderText("Good morning!")
  output$ttest <- renderPrint(t.test(1:5, 2:6))
  output$linreg <- renderPrint(str(lm(mpg ~ wt, data = mtcars)))
}

shinyApp(ui, server)