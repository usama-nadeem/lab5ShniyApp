#shinyUI(fluidPage(
 # titlePanel("Quotation Generator Application"),
  #tags$style("#textbox {font-size:50px;height:50px;width:1000px;}"),
  #sidebarPanel(
 #   uiOutput("Quotation")),

#)
#)

ui <- fluidPage(
  titlePanel("Quotation Generator API"),

  sidebarLayout(
    sidebarPanel(
      helpText("Select the function and see the magic"),

      selectInput("var",
                  label = "Choose Function",
                  choices = c("Random Quotation",
                              "All Quotations",
                              "Search by Author name"),
                  selected = "Random Quotation"),


    ),

    mainPanel(
      textOutput("selected_var"),

    )
  )
)
