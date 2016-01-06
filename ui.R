library(shiny)
source("tabsetPanel2.R")
shinyUI(fluidPage(
  uiOutput("tweak"),

  tabsetPanel2(id = "MainTabs", tabcolors = c("#FFAAAA","#AAFFAA","#AAAAFF"),
    tabPanel(title = "Tab1", "This is tab 1."),
    tabPanel(title = "Tab2", "This is tab 2."),
    tabPanel(title = "Tab3", "This is tab 3.")
  )
))