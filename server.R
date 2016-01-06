library(shiny)
shinyServer(function(input, output) {
  
  output$tweak = renderUI({
    tagList(
      list(tags$head(tags$style(HTML("
.nav-tabs > li{
  margin-right: 5px; margin-left: 5px;
  }
.nav-tabs > li > a{
  border: 2px solid grey;
  border-bottom: none;
}

.nav-tabs > li > a:hover{
  border: 2px solid blue;
}

.nav-tabs > li.active > a, 
.nav-tabs > li.active > a:focus, 
.nav-tabs > li.active > a:hover{
  background-color: initial;
  border: 2px solid black;
  border-bottom: 3px solid transparent;
}
  "
      ))))
    )
  })

  
})
