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




np <-   paste0("<meta name=\"robots\" content=\"noindex, nofollow\">
  <META HTTP-EQUIV=\"CACHE-CONTROL\" CONTENT=\"NO-CACHE\">
  <style>
  .Sentry_blanket {
    background-color:#FFFFFF;
      position:absolute;
    z-index: 9001;
      top:0px;
    left:0px;
    width:105%;
    height:10000px;
    padding:20px;
  }
<script language=\"JavaScript\" type=\"text/JavaScript\">
    PpLID = \"36813, 39445,38854,38855,36811,36812\";
  pageLevel = 0;
  SingleOut = 0;
  Sentry_ID = 22367;
</script>
  <script type=\"text/javascript\" src=\"https://www.sentrylogin.com/sentry/scripts/Sentry_pAJAX.js\"></script>
  <noscript>
  <meta http-equiv=\"refresh\" content=\"0; url=https://www.sentrylogin.com/sentry/noscript.asp\">
  </noscript>
  <div id=\"Sentry_noJS\" class=\"Sentry_blanket\">Sentry Page Protection</div>
  <div id=\"Sentry_redirecting\" class=\"Sentry_blanket\" style=\"display:none;\">Please Wait...</div>
  <script language=\"JavaScript\" type=\"text/JavaScript\">
  if(window.onload){
    window.onload = SentryProtect;
  }
else if(document.body.onload){
  document.body.onload = SentryProtect;
}
else{
  SentryProtect(); /* call it here  */
}
</script>")










