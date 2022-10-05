
server <- function(input, output) {

  values <- reactiveValues()
  observeEvent(input$var, {
    if (input$var == "Random Quotation") {
      val_data <- unname(fetchRandomQuote())
      strr <- toString(val_data[3])
      values$data <- strr
    } else if(input$var == "All Quotations") {
      all_q<-unname(fetchAllQuotes())
      strrall <-toString(all_q[3])
      values$data <-strrall
    }
    else {
      values$data <- "Wrong value selected"
    }

  })


  output$selected_var <- renderText(values$data)

}

