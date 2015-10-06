blog.highlighter <- 'Syntax Highlighter Evolved'
load_twitter_oath(getOption('twitter_consumer_key'),
                  getOption('twitter_consumer_secret'),
                  getOption('twitter_access_token'),
                  getOption('twitter_access_secret'))
load_bitly_oath(getOption('bitly_oath'))
# createTweet=TRUE,
# categoriesAsHashTags=TRUE,
# tagsAsHashTags=TRUE,
# other.hashtags='rstats',
# useURLShortener=TRUE

# R
postToBlog.dev('/media/roberto/Main Storage/Documents/bertplot/R/tutorials/ggplot-histogram/ggplot-histogram.Rmd',
               categories=c('Tutorial','Visualization','R'),
               tags=c('R','Histogram','ggplot2','Basic'),
               syntax.highlighter = blog.highlighter,
               type='CreateOrReplace',
               publish=TRUE,
               createTweet=TRUE)


postToBlog.dev('/media/roberto/Main Storage/Documents/bertplot/R/tutorials/ggplot-boxplot/ggplot-boxplot.Rmd',
               categories=c('R'),
               tags=c('R','Visualization','ggplot2'),
               syntax.highlighter = blog.highlighter,
               type='CreateOrReplace',
               publish=TRUE)

postToBlog.dev('/media/roberto/Main Storage/Documents/bertplot/R/tutorials/ggplot-scatterplot/ggplot-scatterplot.Rmd',
               categories=c('R'),
               tags=c('R','Visualization','ggplot2'),
               syntax.highlighter = blog.highlighter,
               type='CreateOrReplace',
               publish=TRUE)

postToBlog.dev('/media/roberto/Main Storage/Documents/bertplot/R/tutorials/ggplot-facet_grid/ggplot-facet_grid.Rmd',
               categories=c('R'),
               tags=c('R','Visualization','ggplot2'),
               syntax.highlighter = blog.highlighter,
               type='CreateOrReplace',
               publish=TRUE)

postToBlog.dev('/media/roberto/Main Storage/Documents/bertplot/R/tutorials/magrittr-basics/magrittr-basics.Rmd',
               categories=c('R'),
               tags=c('R','magrittr','pipes','%>%'),
               syntax.highlighter = blog.highlighter,
               type='CreateOrReplace',
               publish=TRUE)

postToBlog.dev('/media/roberto/Main Storage/Documents/bertplot/R/tutorials/ggplot-statemaps/ggplot-statemaps.Rmd',
               categories=c('R'),
               tags=c('R','Visualization','ggplot2'),
               syntax.highlighter = blog.highlighter,
               type='CreateOrReplace',
               publish=TRUE)

postToBlog.dev('/media/roberto/Main Storage/Documents/bertplot/R/tutorials/connecting-to-dbs/connecting-to-dbs.Rmd',
               categories=c('R','Databases'),
               tags=c('R','RJDBC','Oracle','Teradata'),
               syntax.highlighter = blog.highlighter,
               type='CreateOrReplace',
               publish=TRUE,
               createTweet = FALSE,useURLShortener = FALSE)

postToBlog.dev('/media/roberto/Main Storage/Documents/bertplot/R/tutorials/musixmatch-api-post/musixmatch-api-post.Rmd',
               categories=c('R','API'),
               tags=c('R','API','musixmatch'),
               syntax.highlighter = blog.highlighter,
               type='CreateOrReplace',
               publish=TRUE,
               toc=FALSE,
               createTweet = FALSE,useURLShortener = FALSE)

postToBlog.dev('/media/roberto/Main Storage/Documents/bertplot/R/tutorials/googleflights-api/googleflights-api.Rmd',
               categories=c('R','API'),
               tags=c('R','API','QPX','google'),
               syntax.highlighter = blog.highlighter,
               type='CreateOrReplace',
               toc = FALSE,
               publish=TRUE,
               createTweet = FALSE,useURLShortener = FALSE)

postToBlog.dev('/media/roberto/Main Storage/Documents/bertplot/Python/tutorials/gspread/gspread.Rmd',
               categories=c('Python','API'),
               tags=c('Python','API','google','googledrive','spreadsheets'),
               syntax.highlighter = blog.highlighter,
               type='CreateOrReplace',
               toc = FALSE,
               publish=TRUE,
               createTweet = FALSE,
               useURLShortener = FALSE)

postToBlog.dev('/media/roberto/Main Storage/Documents/bertplot/R/tutorials/spotify-api/spotify-api.Rmd',
               categories=c('R','API'),
               tags=c('R','API','Spotify'),
               syntax.highlighter = blog.highlighter,
               type='CreateOrReplace',
               toc = FALSE,
               publish=TRUE,
               createTweet = TRUE,
               useURLShortener = TRUE)



postToBlog.dev('/media/roberto/Main Storage/Documents/bertplot/R/tutorials/ggplot-heatmap/ggplot-heatmap.Rmd',
               categories=c('R'),
               tags=c('R','Visualization','ggplot2'),
               syntax.highlighter = blog.highlighter,
               type='CreateOrReplace',
               publish=FALSE)



postToBlog.dev('/media/roberto/Main Storage/Documents/bertplot/R/_test/test-shiny.Rmd',
               categories=c('R'),
               tags=c('R','Visualization','ggplot2'),
               syntax.highlighter = blog.highlighter,
               type='CreateOrReplace',
               publish=FALSE)

