

suppressWarnings(library(shiny))
suppressWarnings(library(markdown))
shinyUI(navbarPage("Coursera Data Science Capstone: Course Project",
                   tabPanel("Word Predictor App",
                            HTML("<strong>Author: Ashish Veera</strong>"),
                            # Sidebar
                            sidebarLayout(
                              sidebarPanel(
                                helpText("Enter a partial sentence to predict the next word"),
                                textInput("inputString", "Enter a partial sentence here",value = ""),
                                submitButton("Submit"),
                                br(),
                                br(),
                                br(),
                                br()
                              ),
                              mainPanel(
                                h2("The predicted next word is:"),
                                verbatimTextOutput("prediction"),
                                strong("Sentence Input was:"),
                                tags$style(type='text/css', '#text1 {background-color: rgba(0,255,255,0.40); color: blue;}'), 
                                textOutput('text1'),
                                br(),
                                strong("Note:"),
                                tags$style(type='text/css', '#text2 {background-color: rgba(0,255,0,0.40); color: black;}'),
                                textOutput('text2')
                              )
                            )
                            
                   )
                   )
)
