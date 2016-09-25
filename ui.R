library(markdown)
shinyUI(navbarPage("FIND YOUR GAME!!",
                   tabPanel("GAMES",
                            sidebarLayout(
                              sidebarPanel(
                                sliderInput('score', 'Score Game', min=0, max=10, value=c(0,10), step=0.1),
                                checkboxGroupInput('category', 'Category:', c("Genero Accion"=0, "Genero Aventura"=1, "Genero Deportes"=2, "Genero Rol"=3), selected = c(0,1,2,3)),
                                checkboxGroupInput('console', 'Console:', c("PS4"=0, "Wii"=1, "X360"=2), selected = c(0,1,2)),
                                checkboxGroupInput('new_used', 'New/Used:', c("NUEVO"=0, "USADO"=1), selected = c(0,1)),
                                sliderInput('price', 'Price', min=20, max=70, value=c(20,70), step=1)
                              ),
                              mainPanel(
                                dataTableOutput('table')
                              )
                            )
                   ),
                   tabPanel("About",
                            mainPanel(
                              h1('Welcome'),
                              h3('In this site you can find the best game for you.'),
                              h3('We only need that you provide the game detail like the Price, Score, New/Used, categoy and console.'),
                              h3('The result contains the games that fit your filters.')
                            )
                   )
))