#tabsetPanel2.R
#The parameters are the same as for tabsetPanel, except for tabcolors
#tabcolors is a character vector with the same length as the number of tabs
#each entry tabcolors should be a hex color code preceded by a #, such as "#AFAF0F"

tabsetPanel2 = function (..., id = NULL, selected = NULL, type = c("tabs", "pills"), 
                         position = c("above", "below", "left", "right"), tabcolors = NULL) {
  if(is.null(colors)){
    returner = tabsetPanel(..., id, selected, type, position) #if no colors, use the regular function
  } else {
    tabs <- list(...)
    if(length(tabs) != length(tabcolors)){ #stop if there is an error
      stop("The number of colors must match the number of tabs")
    } 
    type <- match.arg(type)
    tabset <- buildTabset(tabs, paste0("nav nav-", type), NULL, id, selected)
    for (i in 1:length(tabcolors)){ # apply the tab colors
      tabset$navList$children[[i]]$children[[1]]$attribs$style = paste0("background-color: ",tabcolors[i],";")
      tabset$content$children[[i]]$attribs$style = paste0("border: 4px solid", tabcolors[i],";")
    }
    position <- match.arg(position)
    if (position %in% c("above", "left", "right")) {
      first <- tabset$navList
      second <- tabset$content
    }
    else if (position %in% c("below")) {
      first <- tabset$content
      second <- tabset$navList
    }
    returner = tags$div(class = paste("tabbable tabs-", position, sep = ""), first, second)
  }
  return(returner)
}
environment(tabsetPanel2) = environment(tabsetPanel)

