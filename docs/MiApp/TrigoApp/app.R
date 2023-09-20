library(shiny)
library(ggplot2)

ui <- fluidPage(
  titlePanel("Trigonometría"),
  
  sidebarLayout(
    sidebarPanel(
      selectInput("funcion",
                  "Selecciona una función:",
                  choices = c("sen(x)", "sen(hx)", "sen(hx+r)", "k*sin(hx+r)", 
                              "s+k*sin(hx+r)",
                              "cos(x)", "cos(hx)", "cos(hx+r)", "k*cos(hx+r)",
                              "s+k*cos(hx+r)",
                              "tan(x)", "tan(hx)", "tan(hx+r)", "k*tan(hx+r)",
                              "s+k*tan(hx+r)"),
                  selected = "sen(x)"),
      sliderInput("h", "Valor de h:", min = -5, max = 5, value = 3, step = 0.5),
      sliderInput("k", "Valor de k:", min = -5, max = 5, value = 1, step = 0.5),
      sliderInput("s", "Valor de s:", min = -5, max = 5, value = 0, step = 0.5),
      sliderInput("r", "Valor de r:", min = -5*pi, max = 5*pi, value = 0, step = 0.5)
    ),
    
    mainPanel(
      plotOutput("grafico")
    )
  )
)

server <- function(input, output) {
  output$grafico <- renderPlot({
    funcion_elegida <- input$funcion
    h <- input$h
    k <- input$k
    s <- input$s
    r <- input$r
    
    x <- seq(-2 * pi * 2, 2 * pi * 2, length.out = 1000)
    y <- switch(funcion_elegida,
                "sen(x)" = sin(x),
                "sen(hx)" = sin(h * x),
                "sen(hx+r)" = sin(h * x + r),
                "k*sin(hx+r)" = k * sin(h * x + r),
                "s+k*sin(hx+r)" = s + k * sin(h * x + r),
                "cos(x)" = cos(x),
                "cos(hx)" = cos(h * x),
                "cos(hx+r)" = cos(h * x + r),
                "k*cos(hx+r)" = k * cos(h * x + r),
                "s+k*cos(hx+r)" = s + k * cos(h * x + r),
                "tan(x)" = tan(x),
                "tan(hx)" = tan(h * x),
                "tan(hx+r)" = tan(h * x + r),
                "k*tan(hx+r)" = k * tan(h * x + r),
                "s+k*tan(hx+r)" = s + k * tan(h * x + r)
    )
    
    data <- data.frame(x = x, y = y)
    
    ggplot(data, aes(x = x, y = y)) +
      geom_line() +
      geom_vline(xintercept = 0, color = "green") +
      geom_hline(yintercept = 0, color = "green") +
      labs(x = "x", y = funcion_elegida) +
      theme(axis.text.x = element_text(color = "blue"),
            axis.text.y = element_text(color = "blue"),
            axis.title.x = element_text(color = "blue"),
            axis.title.y = element_text(color = "blue"))
  })
}

shinyApp(ui = ui, server = server)
