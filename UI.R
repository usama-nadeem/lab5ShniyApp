
ui <- fluidPage(

  titlePanel("Quotation Generator API"),

  sidebarLayout(
    sidebarPanel(
      helpText("Select the function and see the magic"),

      selectInput("var",
                  label = "Choose Function",
                  choices = c("Random Quotation",
                              "All Quotations"),
                  selected = "Random Quotation"),


    ),

    mainPanel(
      textOutput("selected_var"),
    )
  )
)
