---
html_document:
  toc: true
title: "Connecting to Databases in R"
---



# Connecting to an Oracle Database with RJDBC

Connecting is fairly straight forward using RJDBC.  You need to get your driver, and then define the DSN.  THen you create a connection object and are good to go.


```r
library(RJDBC)
drv <- JDBC('oracle.jdbc.OracleDriver','/path/to/driver/ojdbc6.jar')
connectionString <- "jdbc:oracle:thin:@//YOUR_DSN/"
connection <- dbConnect(drv,connectionString,YOUR_USER_NAME,YOUR_PWD)
```

Now you can use all sorts of functions to send requests to the database.


```r
dbGetQuery(connection, 'select * from table')
```

When you're done, you can disconnect with `dbDisconnect` function


```r
dbDisconnect(connection)
```

<a href="#top">Back to top</a>

# Connecting to Teradata Database

This process is almost identical.  First, you need to change the driver. Then the connectionString format is slightly different.


```r
drv <- JDBC('com.teradata.jdbc.TeraDriver')
connectionString <- "jdbc:teradata::@//YOUR_DSN/database=YOUR_DATABASE"
connection <- dbConnect(drv,connectionString,YOUR_USER_NAME,YOUR_PWD)
```

Now you're ready to send requests to a Teradata machine.

<img src="figure/unnamed-chunk-5-1.png" title="plot of chunk unnamed-chunk-5" alt="plot of chunk unnamed-chunk-5" style="display: block; margin: auto;" />

<a href="#top">Back to top</a>

# More Resources
- [Source as RMarkdown](https://github.com/rweyant/bertplot/blob/master/R/tutorials/connecting-to-dbs/connecting-to-dbs.Rmd)
- [RJDBC on CRAN](https://cran.r-project.org/web/packages/RJDBC/index.html)
- [Bommarito Blog post](http://bommaritollc.com/2012/11/connecting-r-to-an-oracle-database-with-rjdbc/?utm_source=rss&utm_medium=rss&utm_campaign=connecting-r-to-an-oracle-database-with-rjdbc)