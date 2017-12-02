#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(markdown)

shinyUI(fluidPage(
  
  # Application title
  titlePanel("Next Word Application"),
  
  # Sidebar 
  sidebarLayout(
    sidebarPanel(
      helpText("Help: Input phrase to predict the word that comes after"),
      textInput("inputString", "Key in your phrase below",value = ""),
      br(),
      br(),
      br(),
      br()
    ),
    mainPanel(
      h2("The Next Possible Word"),
      verbatimTextOutput("prediction"),
      strong("Phrase Input:"),
      tags$style(type='text/css', '#text1 {background-color: rgba(255,255,0,0.40); color: blue;}'), 
      textOutput('text1'),
      br(),
      strong("Note:"),
      tags$style(type='text/css', '#text2 {background-color: rgba(255,255,0,0.40); color: black;}'),
      textOutput('text2')
    )
  )
)
)
