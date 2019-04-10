<img src="img/football.png" align="right" width="10%" height="10%"style="border:0.0px solid #eeeeee; padding:5px; margin:6px;"/>

  <img src="img/over1.jpg" align="right" style="border:0.0px solid #eeeeee; padding:5px; margin:6px;"/>

    <h3><a href="https://quiz.tepedu.dk/juraerstatning" target="_blank">Quiz Erstatning</a></h3>
      <a href="https://www.forbrug.dk/quiz/ehandelsquizzen/?rn=43716" target="_blank">Tag quizzen fra forbrug.dk, og få svar.</a>



        <div class="video-container"><iframe src="https://www.youtube.com/embed/1q0K01SQavk" width="853" height="480" frameborder="0" allowfullscreen="allowfullscreen"></iframe></div>


          ![](img/mf1.png)
        (se figur \@ref(fig:fordring12))












``r tippy("GBL", size="large" ,interactive = TRUE, arrow = TRUE, tooltip = "<h4>Legitimationsvirkningen indtræder derfor, når udlægshaver meddeler gældsbrevsdebitor, at betaling med frigørende virkning kun kan ske til udlægshaveren.
<br>
<br>
<a href=\"https://www.w3schools.com\" style=\"color:#66FF66\" target=\"_blank\">Visit W3Schools</a>
<br>
<br>
<a href=\"https://www.retsinformation.dk/Forms/R0710.aspx?id=2664\"  style=\"color:#66FF66\" target=\"_blankv\">Arveloven</a>
<br>
<br>
Gældsbrevsdebitor bliver ved betaling til udlægshaver frigjort under samme betingelser som ved betaling efter overdragelse af et gældsbrev. Se RPL § 524.</h4>")``





    <h3>Hvordan må man opsamle og behandle personoplysninger?</h3>
      ```{r echo=FALSE}

    mydf <- data.frame(
      S1 = c("Følsomme personoplysninger" ,"Som udgangspunkt ikke, medmindre:<br><br>
             - Der er givet samtykke<br><br>
             - Det sker for at sikre personens vitale interesser, og der ikke kan indhentes samtykke (Sygdomsreglen)<br><br>
             - Der er tale om en forening der behandler oplysningerne som led i deres aktiviteter<br><br>
             - Hvis man selv har offentliggjort oplysningen<br><br>
             - For at kunne fastlægge et retskrav<br><br>
             - For at kunne overholde arbejdsretlige forpligtelser"),
      S2 = c("Personoplysninger med særlig beskyttelse" ,
             "Hvis:<br><br>
             - Der er givet samtykke<br><br>
             - Det følger af lovgivningen<br><br>
             - Det sker som til statistiske formål<br><br>
             - Et af kriterierne fra de følsomme oplysninger er opfyldt"),
  S3 = c("Andre personoplysninger",
    "Hvis:<br><br>
    - Der er givet samtykke<br><br>
    - Det sker for at opfylde en kontrakt<br><br>
    - Det sker for at opfylde en retlig forpligtelse<br><br>
    - Det sker for at sikre personens vitale interesser, og der ikke kan indhentes samtykke (Sygdomsreglen)<br><br>
    - Det sker for at udføre en opgave i samfundets interesse<br><br>
    - Der er en legitim interesse hos virksomheden)"
  )
)
names(mydf) <- NULL



mydf %>%
  kable("html", escape = FALSE) %>%
  kable_styling(full_width = T,font_size = 10,bootstrap_options = c("responsive","bordered","striped")) %>%
  column_spec(1, bold = T, border_right = T, color = "white", background = "red") %>%
  column_spec(2, bold = T, border_right = T, color = "black", background = "yellow") %>%
  column_spec(3, bold = T, border_right = T, color = "white", background = "green") %>%
  row_spec(1,italic = T,bold = T,font_size = 12) %>%
  # column_spec(0, angle = -45)%>%
  # scroll_box(width = "500px") %>%
  footnote(general = "Datatilsynet",general_title = "Kilde:")
```






<!-- # Test -->

  <!-- ```{r echo=FALSE} -->
  <!-- # install.packages("rhandsontable") -->
  <!-- library(rhandsontable) -->
  <!-- DF = data.frame(integer = 1:10, -->
                         <!--                    numeric = rnorm(10), -->
                         <!--                    logical = rep(TRUE, 10),  -->
                         <!--                    character = LETTERS[1:10], -->
                         <!--                    factor = factor(letters[1:10], levels = letters[10:1],  -->
                                                                   <!--                                    ordered = TRUE), -->
                         <!--                    factor_allow = factor(letters[1:10], levels = letters[10:1],  -->
                                                                         <!--                                          ordered = TRUE), -->
                         <!--                    date = seq(from = Sys.Date(), by = "days", length.out = 10), -->
                         <!--                    stringsAsFactors = FALSE) -->

  <!-- rhandsontable(DF, width = 600, height = 300) %>% -->
  <!--   hot_col("factor_allow", allowInvalid = TRUE) -->

  <!-- meancalc <- mean(DF$numeric) -->
  <!-- meancalc -->
  <!-- ``` -->


```{r network7,echo=FALSE, result=TRUE}

nodes <- data.frame(id = 1:7,
                    shape = c("box"),
                    label = c("Aftalelov","Forsikringsaftalelov","Kreditaftalelov","Forbrugeraftalelov","AB92","Købelov","E-handelslov"),
                    font.size = c(50,25,25,25,25,25,25))
edges <- data.frame(from = c(1,1,1,1,1,1), to = c(2,3,4,5,6,7),arrows = c("to"),length = rep(20,6))

visNetwork(nodes, edges, height = "500px", width = "100%") %>%
  visNodes(color = list(background = "lightgrey",
                        border = "darkblue",
                        highlight = "yellow"),
           shadow = list(enabled = FALSE, size = 30))  %>%
  visHierarchicalLayout(direction = "LR",levelSeparation = 500)
# visLayout(randomSeed = 24) # to have always the same network

```



```{r echo=FALSE}
library(kableExtra)

fr <- data.frame(
  Aktivitet = c(rep("Anbringelse<br><br>Det ulovlige udbytte anbringes", 1), rep("Sløring<br><br>Det ulovlige udbytte adskilles fra dets kilde",1 ),rep("Anvendelse<br><br>Udbytte tilbageføres",1)),
  E1 = c(
    "CASH",
    "UDL",
    "Tilbageførsel som betaling"
  ),
  E2 = c(
    " CASH <br> UDL ",
    " CASH ",
    " CASH "
  ),
  E3 = c(
    "Anvendelse af",
    "Salg af de købte",
    "Indtægt fra"
  )
)
fr %>%
  mutate(
    E1 = cell_spec(E1, "html", escape = FALSE, color = "red"),
    E2 = cell_spec(E2, "html", escape = FALSE, color = "white",background="red", align = "c", angle = 90)
  ) %>%
  # names(fr) <- c("A" ,"E1" , "E2" , "E3")
  kable(fr,  format = "html", escape = FALSE) %>%
  kable_styling(full_width = T,font_size = 10,bootstrap_options = c("responsive","bordered","striped")) %>%
  column_spec(1, bold = T, border_right = T, color = "white", background = "black") %>%
  row_spec(0,italic = T, color = "white", background = "grey",font_size = 12) %>%
  # column_spec(0, angle = -45)%>%
  # scroll_box(width = "500px") %>%
  scroll_box(width = "100%") %>%
  footnote(general = "Hvidvasksekretariatet",general_title = "Kilde: ")
```
