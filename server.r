library(shiny)
library(datasets)
library(dplyr)

games <- read.csv(file = "Games.csv" ,sep = ";" )

shinyServer(function(input, output) {
  output$table <- renderDataTable({
    Price_seq <- seq(from = input$price[1], to = input$price[2], by = 1)
    Score_seq <- seq(from = input$score[1], to = input$score[2], by = 0.1)
    Category_fil <- ifelse(input$category==0, "Genero Accion",ifelse(input$category==1, "Genero Aventura",ifelse(input$category==2, "Genero Deportes","Genero Rol")))
    Console_fil  <- ifelse(input$console==0, "PS4",ifelse(input$console==1, "Wii","X360"))
    New_Used_fil <- ifelse(input$new_used==0, "NUEVO","USADO")
    data <- filter(games, SCORE %in% Score_seq
                        , PRICE %in% Price_seq
                        , CATEGORY %in% Category_fil
                        , CONSOLE %in% Console_fil
                        , NEW_USED %in% New_Used_fil)
    data <- arrange(data, SCORE)
    data
  }, options = list(lengthMenu = c(5, 15, 30), pageLength = 30))
})
