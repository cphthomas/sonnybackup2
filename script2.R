urlblank <- function(link,tekst) {
fullurl <- paste0('<a href=\"',link,'\" target="_blank">',tekst,'</a>',sep = "")
  return(fullurl)
}

picture <- function(img,side='right',width='100%') {
  fullurl <- paste0('<img src=\"img/',img,'\" align=\"',side,'\" width=\"',width,'\" style=\"border:0.0px solid #eeeeee; padding:1px; margin:1px;\"/>',sep = "")
  return(fullurl)
}


picurlblank <- function(link,tekst='link',img,side='right',width='100%') {
  fullurl <- paste0('<a href=\"',link,'\" target="_blank"> <img src=\"img/',img,'\" align=\"',side,'\" width=\"',width,'\" style=\"border:0.0px solid #eeeeee; padding:1px; margin:1px;\"/></a>',sep = "")
  return(fullurl)
}


# `r urlblank(link = "https://www.google.com/",tekst = "Her kan du søge vha. Google's søgemaskine")`
# <br>
#   `r picture(img = "football.png",side = "left",width = "5%")`
# `r picture(img = "football.png",width = "5%")`
# `r picture(img = "bank.png",side = "left",width = "5%")`
# `r picurlblank(link="https://cran.r-project.org/",img="football.png",side='right',width='10%')`
# `r picurlblank(link="https://cran.r-project.org/",img="bank.png",side='right',width='5%')`
#
# `r picurlblank(link="https://cran.r-project.org/",img="as.jpg",side='right',width='5%')`





