library(shiny)
shinyServer(function(input, output) {
  
  output$tweak = renderUI({
    tagList(list(tags$head(tags$style(HTML("
tabs-left > .nav-tabs{
border-bottom-width: 0px;
}

tabs-left > .nav-tabs > li{
margin-right: 0px;
}
tabs-left > .nav-tabs > li > a{
margin-right: 0px;
border-right-width: 0px;
border-radius: 10px 0px 0px 10px;
border-top-width: 0px;
border-bottom-width: 0px;
border-left-width: 5px;
}
tabs-left > .nav-tabs > li.active{
margin-right: 0px;
}
tabs-left > .nav-tabs > li.active > a, 
tabs-left > .nav-tabs > li.active > a:focus, 
tabs-left > .nav-tabs > li.active > a:hover{
margin-right: 0px;
border-radius: 10px 0px 0px 10px;
border-right-width: 0px;
border-top-width: 0px;
border-bottom-width: 0px;
border-color: blue;
border-left-width: 5px;
}
")))))
  })
  
})
