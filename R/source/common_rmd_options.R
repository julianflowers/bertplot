library(knitr)
library(markdown)

options(width = 60)
opts_knit$set(upload = TRUE)
opts_knit$set(width=60)

knitr::opts_chunk$set(cache=FALSE,warning=FALSE,fig.align='center',fig.width=8,fig.height=6,comment='')

suppressMessages(suppressPackageStartupMessages( devtools::load_all("/media/roberto/Main Storage/Documents/R/packages/musixmatch/")))
musixmatch::set_apikey('b726af8f59eeb62fbf637c012e562157')

suppressMessages(suppressPackageStartupMessages( devtools::load_all("/media/roberto/Main Storage/Documents/R/packages/googleflights/")))
googleflights::set_apikey('AIzaSyCG0HuvV6Kr58r-gi_gver43pWizTfJ1Uk')
