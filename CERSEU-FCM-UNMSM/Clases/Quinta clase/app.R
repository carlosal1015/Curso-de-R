# Hello world
# https://www.youtube.com/watch?v=Ido56dwDTg8&list=LL0dDIu9Ppa8BMXrNksA5oYA&index=1&t=0s
# https://jcheng.shinyapps.io/crandash/

# app.R
#
# Copyright © 2018 Oromion <caznaranl@uni.pe>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

library(shiny)

ui <- fluidPage(
  h1("Hello, World!"),
  sidebarLayout(
    sidebarPanel(
      selectInput("dataset", "Choose a dataset:",
        choices = ls("package:datasets"),
        selected = "pressure")
    ),
    mainPanel(
      tabsetPanel(
        tabPanel("Str",
           verbatimTextOutput("dump")
        ),
        tabPanel("Plot",
           plotOutput("plot")
        ),
        tabPanel("Table",
           tableOutput("table")
        )
      )
    )
  )
)

server <- function(input, output, session) {
  output$dump <- renderPrint({
    dataset <- get(input$dataset, "package:datasets", inherits = FALSE)
    str(dataset)
  })
  output$plot <- renderPlot({
    dataset <- get(input$dataset, "package:datasets", inherits = FALSE)
    plot(dataset)
  })
  output$table <- renderTable({
    dataset <- get(input$dataset, "package:datasets", inherits = FALSE)
    dataset
  })
}

shinyApp(ui, server)