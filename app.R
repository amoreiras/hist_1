
library(shiny)

ui <- fluidPage(
	sliderInput("num",
	label = "Choose a number",
	value = 25, min = 1, max = 100),
	plotOutput("hist")  
)

server <- function(input, output){
	output$hist  <- renderPlot({
		hist(rnorm(input$num*100))	
})
}
shinyApp(ui = ui, server = server)
