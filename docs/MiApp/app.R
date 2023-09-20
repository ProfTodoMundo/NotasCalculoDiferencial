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
  observe({
    funcion_elegida <- switch(input$funcion,
                              "sen(x)" = "sen(x)",
                              "sen(hx)" = "sen(hx)",
                              "sen(hx+r)" = "sen(hx+r)",
                              "k*sin(hx+r)" = "k*sin(hx+r)",
                              "s+k*sin(hx+r)" = "s+k*sin(hx+r)",
                              "cos(x)" = "cos(x)",
                              "cos(hx)" = "cos(hx)",
                              "cos(hx+r)" = "cos(hx+r)",
                              "k*cos(hx+r)" = "k*cos(hx+r)",
                              "s+k*cos(hx+r)" = "s+k*cos(hx+r)",
                              "tan(x)" = "tan(x)",
                              "tan(hx)" = "tan(hx)",
                              "tan(hx+r)" = "tan(hx+r)",
                              "k*tan(hx+r)" = "k*tan(hx+r)",
                              "s+k*tan(hx+r)" = "s+k*tan(hx+r)")
    
    h <- input$h
    k <- input$k
    s <- input$s
    r <- input$r
    
    output$grafico <- renderPlot({
      if (funcion_elegida == "sen(x)") {
        # Tu código para la función sen(x)
        x <- seq(-2 * pi * 2, 2 * pi * 2, length.out = 1000)
        y <- sin(x)
        data <- data.frame(x = x, y = y)
        ggplot(data, aes(x = x, y = y)) +
          geom_line() +
          geom_vline(xintercept = 0, color = "green") +
          geom_hline(yintercept = 0, color = "green") +
          labs(x = "x", y = "sen(x)") +
          theme(axis.text.x = element_text(color = "blue"),
                axis.text.y = element_text(color = "blue"),
                axis.title.x = element_text(color = "blue"),
                axis.title.y = element_text(color = "blue"))
      } else if (funcion_elegida == "sen(hx)") {
        # Tu código para la función sen(hx)
        x <- seq(-2 * pi * 2, 2 * pi * 2, length.out = 1000)
        y <- sin(h * x)
        data <- data.frame(x = x, y = y)
        ggplot(data, aes(x = x, y = y)) +
          geom_line() +
          geom_vline(xintercept = 0, color = "green") +
          geom_hline(yintercept = 0, color = "green") +
          labs(x = "x", y = paste("sen(", h, "x)")) +
          theme(axis.text.x = element_text(color = "blue"),
                axis.text.y = element_text(color = "blue"),
                axis.title.x = element_text(color = "blue"),
                axis.title.y = element_text(color = "blue"))
      } else if (funcion_elegida == "sen(hx+r)") {
        # Tu código para la función sen(hx+r)
        x <- seq(-2 * pi * 2, 2 * pi * 2, length.out = 1000)
        y <- sin(h * x + r)
        data <- data.frame(x = x, y = y)
        ggplot(data, aes(x = x, y = y)) +
          geom_line() +
          geom_vline(xintercept = 0, color = "green") +
          geom_hline(yintercept = 0, color = "green") +
          labs(x = "x", y = paste("sen(", h, "x +", r, ")")) +
          theme(axis.text.x = element_text(color = "blue"),
                axis.text.y = element_text(color = "blue"),
                axis.title.x = element_text(color = "blue"),
                axis.title.y = element_text(color = "blue"))
      } else if (funcion_elegida == "k*sin(hx+r)") {
        # Tu código para la función k*sin(hx+r)
        x <- seq(-2 * pi * 2, 2 * pi * 2, length.out = 1000)
        y <- k * sin(h * x + r)
        data <- data.frame(x = x, y = y)
        ggplot(data, aes(x = x, y = y)) +
          geom_line() +
          geom_vline(xintercept = 0, color = "green") +
          geom_hline(yintercept = 0, color = "green") +
          labs(x = "x", y = paste(k, "*sin(", h, "x +", r, ")")) +
          theme(axis.text.x = element_text(color = "blue"),
                axis.text.y = element_text(color = "blue"),
                axis.title.x = element_text(color = "blue"),
                axis.title.y = element_text(color = "blue"))
      } else if (funcion_elegida == "s+k*sin(hx+r)") {
        # Tu código para la función s+k*sin(hx+r)
        x <- seq(-2 * pi * 2, 2 * pi * 2, length.out = 1000)
        y <- s + k * sin(h * x + r)
        data <- data.frame(x = x, y = y)
        ggplot(data, aes(x = x, y = y)) +
          geom_line() +
          geom_vline(xintercept = 0, color = "green") +
          geom_hline(yintercept = 0, color = "green") +
          labs(x = "x", y = paste(s, "+", k, "*sin(", h, "x +", r, ")")) +
          theme(axis.text.x = element_text(color = "blue"),
                axis.text.y = element_text(color = "blue"),
                axis.title.x = element_text(color = "blue"),
                axis.title.y = element_text(color = "blue"))
      }
      # Repite el mismo patrón para otras funciones
      if (funcion_elegida == "cos(x)") {
        # Tu código para la función cos(x)
        x <- seq(-2 * pi * 2, 2 * pi * 2, length.out = 1000)
        y <- cos(x)
        data <- data.frame(x = x, y = y)
        ggplot(data, aes(x = x, y = y)) +
          geom_line() +
          geom_vline(xintercept = 0, color = "green") +
          geom_hline(yintercept = 0, color = "green") +
          labs(x = "x", y = "cos(x)") +
          theme(axis.text.x = element_text(color = "blue"),
                axis.text.y = element_text(color = "blue"),
                axis.title.x = element_text(color = "blue"),
                axis.title.y = element_text(color = "blue"))
      } else if (funcion_elegida == "cos(hx)") {
        # Tu código para la función cos(hx)
        x <- seq(-2 * pi * 2, 2 * pi * 2, length.out = 1000)
        y <- cos(h * x)
        data <- data.frame(x = x, y = y)
        ggplot(data, aes(x = x, y = y)) +
          geom_line() +
          geom_vline(xintercept = 0, color = "green") +
          geom_hline(yintercept = 0, color = "green") +
          labs(x = "x", y = paste("cos(", h, "x)")) +
          theme(axis.text.x = element_text(color = "blue"),
                axis.text.y = element_text(color = "blue"),
                axis.title.x = element_text(color = "blue"),
                axis.title.y = element_text(color = "blue"))
      } else if (funcion_elegida == "cos(hx+r)") {
        # Tu código para la función sen(hx+r)
        x <- seq(-2 * pi * 2, 2 * pi * 2, length.out = 1000)
        y <- cos(h * x + r)
        data <- data.frame(x = x, y = y)
        ggplot(data, aes(x = x, y = y)) +
          geom_line() +
          geom_vline(xintercept = 0, color = "green") +
          geom_hline(yintercept = 0, color = "green") +
          labs(x = "x", y = paste("cos(", h, "x +", r, ")")) +
          theme(axis.text.x = element_text(color = "blue"),
                axis.text.y = element_text(color = "blue"),
                axis.title.x = element_text(color = "blue"),
                axis.title.y = element_text(color = "blue"))
      } else if (funcion_elegida == "k*cos(hx+r)") {
        # Tu código para la función k*cos(hx+r)
        x <- seq(-2 * pi * 2, 2 * pi * 2, length.out = 1000)
        y <- k * cos(h * x + r)
        data <- data.frame(x = x, y = y)
        ggplot(data, aes(x = x, y = y)) +
          geom_line() +
          geom_vline(xintercept = 0, color = "green") +
          geom_hline(yintercept = 0, color = "green") +
          labs(x = "x", y = paste(k, "*cos(", h, "x +", r, ")")) +
          theme(axis.text.x = element_text(color = "blue"),
                axis.text.y = element_text(color = "blue"),
                axis.title.x = element_text(color = "blue"),
                axis.title.y = element_text(color = "blue"))
      } else if (funcion_elegida == "s+k*cos(hx+r)") {
        # Tu código para la función s+k*cos(hx+r)
        x <- seq(-2 * pi * 2, 2 * pi * 2, length.out = 1000)
        y <- s + k * cos(h * x + r)
        data <- data.frame(x = x, y = y)
        ggplot(data, aes(x = x, y = y)) +
          geom_line() +
          geom_vline(xintercept = 0, color = "green") +
          geom_hline(yintercept = 0, color = "green") +
          labs(x = "x", y = paste(s, "+", k, "*cos(", h, "x +", r, ")")) +
          theme(axis.text.x = element_text(color = "blue"),
                axis.text.y = element_text(color = "blue"),
                axis.title.x = element_text(color = "blue"),
                axis.title.y = element_text(color = "blue"))
      }
      if (funcion_elegida == "tan(x)") {
        # Tu código para la función tan(x)
        x <- seq(-2 * pi * 2, 2 * pi * 2, length.out = 1000)
        y <- tan(x)
        data <- data.frame(x = x, y = y)
        ggplot(data, aes(x = x, y = y)) +
          geom_line() +
          geom_vline(xintercept = 0, color = "green") +
          geom_hline(yintercept = 0, color = "green") +
          labs(x = "x", y = "sen(x)") +
          theme(axis.text.x = element_text(color = "blue"),
                axis.text.y = element_text(color = "blue"),
                axis.title.x = element_text(color = "blue"),
                axis.title.y = element_text(color = "blue"))
      } else if (funcion_elegida == "tan(hx)") {
        # Tu código para la función sen(hx)
        x <- seq(-2 * pi * 2, 2 * pi * 2, length.out = 1000)
        y <- tan(h * x)
        data <- data.frame(x = x, y = y)
        ggplot(data, aes(x = x, y = y)) +
          geom_line() +
          geom_vline(xintercept = 0, color = "green") +
          geom_hline(yintercept = 0, color = "green") +
          labs(x = "x", y = paste("sen(", h, "x)")) +
          theme(axis.text.x = element_text(color = "blue"),
                axis.text.y = element_text(color = "blue"),
                axis.title.x = element_text(color = "blue"),
                axis.title.y = element_text(color = "blue"))
      } else if (funcion_elegida == "tan(hx+r)") {
        # Tu código para la función tan(hx+r)
        x <- seq(-2 * pi * 2, 2 * pi * 2, length.out = 1000)
        y <- tan(h * x + r)
        data <- data.frame(x = x, y = y)
        ggplot(data, aes(x = x, y = y)) +
          geom_line() +
          geom_vline(xintercept = 0, color = "green") +
          geom_hline(yintercept = 0, color = "green") +
          labs(x = "x", y = paste("sen(", h, "x +", r, ")")) +
          theme(axis.text.x = element_text(color = "blue"),
                axis.text.y = element_text(color = "blue"),
                axis.title.x = element_text(color = "blue"),
                axis.title.y = element_text(color = "blue"))
      } else if (funcion_elegida == "k*tan(hx+r)") {
        # Tu código para la función k*tan(hx+r)
        x <- seq(-2 * pi * 2, 2 * pi * 2, length.out = 1000)
        y <- k * tan(h * x + r)
        data <- data.frame(x = x, y = y)
        ggplot(data, aes(x = x, y = y)) +
          geom_line() +
          geom_vline(xintercept = 0, color = "green") +
          geom_hline(yintercept = 0, color = "green") +
          labs(x = "x", y = paste(k, "*sin(", h, "x +", r, ")")) +
          theme(axis.text.x = element_text(color = "blue"),
                axis.text.y = element_text(color = "blue"),
                axis.title.x = element_text(color = "blue"),
                axis.title.y = element_text(color = "blue"))
      } else if (funcion_elegida == "s+k*tan(hx+r)") {
        # Tu código para la función s+k*tan(hx+r)
        x <- seq(-2 * pi * 2, 2 * pi * 2, length.out = 1000)
        y <- s + k * tan(h * x + r)
        data <- data.frame(x = x, y = y)
        ggplot(data, aes(x = x, y = y)) +
          geom_line() +
          geom_vline(xintercept = 0, color = "green") +
          geom_hline(yintercept = 0, color = "green") +
          labs(x = "x", y = paste(s, "+", k, "*tan(", h, "x +", r, ")")) +
          theme(axis.text.x = element_text(color = "blue"),
                axis.text.y = element_text(color = "blue"),
                axis.title.x = element_text(color = "blue"),
                axis.title.y = element_text(color = "blue"))
      }
    })
  })
}


shinyApp(ui = ui, server = server)
