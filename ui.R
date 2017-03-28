library(shiny)
source("tabsetPanel2.R")
shinyUI(fluidPage(
  uiOutput("tweak"),

  tabsetPanel2(
    id = "MainTabs", 
    type = "tabs", 
    position = "left", 
    tabcolors = c("#FFAAAA","#AAFFAA","#AAAAFF"),
    title = "Colorful Tabs",
    tabPanel(title = "Tab1", "This is tab 1.",tags$br(),tags$br(),tags$br(),tags$br(),tags$br(),tags$br()),
    tabPanel(title = "Tab2", "This is tab 2.",tags$br(),tags$br(),tags$br(),tags$br(),tags$br(),tags$br()),
    tabPanel(title = "Tab3", 
             tabsetPanel(
               id = "stuff",
               type = "tabs",
               position = "above",
               tabPanel(title = "InnerTab1", "This is inner tab 1"),
               tabPanel(title = "InnerTab2", "This is inner tab 2")
             ))
  )
))