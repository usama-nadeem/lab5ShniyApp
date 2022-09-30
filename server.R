library(shiny)
library(shinythemes)
require(QuotesGenerator)
val_data <- unname(fetchRandomQuote())
strr <- toString(val_data[3])

all_q<-unname(fetchAllQuotes())
strrall <- toString(all_q[3])
#shinyServer(function(input, output) {
  #output$Quotation <- renderUI({
  #  selectInput("valdata", "Random Quotation", val_data[3])
 # })})

server <- function(input, output) {

  output$selected_var <- renderText({
    if(input$var=="Random Quotation")
    {
    strr}
    else
    {
      output$selected_var <- renderText({strrall})
    }

  })



}

