library(shiny)

ui <- fluidPage(
  # dataTableOutput("table") # deprecated in shiny 1.8.1
  DT::DTOutput("table")
)
server <- function(input, output, session) {
  # output$table <- renderDataTable(mtcars, options = list(pageLength = 5, searching = FALSE, ordering = FALSE, info = FALSE)) # deprecated in shiny 1.8.1
  output$table <- DT::renderDT(mtcars, options = list(pageLength = 5, searching = FALSE, ordering = FALSE, info = FALSE))
}

shinyApp(ui, server)