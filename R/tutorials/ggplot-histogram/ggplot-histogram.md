---
html_document:
  toc: true
title: "Histogram Basics in ggplot2"
---



# Basic Syntax


```r
library(ggplot2)
ggplot(iris,aes(Sepal.Width))+geom_histogram()
```

```
stat_bin: binwidth defaulted to range/30. Use 'binwidth = x' to adjust this.
```

<img src="figure/unnamed-chunk-1-1.png" title="plot of chunk unnamed-chunk-1" alt="plot of chunk unnamed-chunk-1" style="display: block; margin: auto;" />

<a href="#top">Back to top</a>

# Additional Features

## Add Groups


```r
ggplot(iris,aes(Sepal.Width,fill=Species))+geom_histogram()
```

```
stat_bin: binwidth defaulted to range/30. Use 'binwidth = x' to adjust this.
```

<img src="figure/unnamed-chunk-2-1.png" title="plot of chunk unnamed-chunk-2" alt="plot of chunk unnamed-chunk-2" style="display: block; margin: auto;" />

## Fix Binwidth


```r
ggplot(iris,aes(Sepal.Width,fill=Species))+geom_histogram(binwidth=.10)
```

<img src="figure/unnamed-chunk-3-1.png" title="plot of chunk unnamed-chunk-3" alt="plot of chunk unnamed-chunk-3" style="display: block; margin: auto;" />

## As a Density


```r
ggplot(iris,
       aes(Sepal.Width,fill=Species))+geom_histogram(aes(y=..density..))
```

```
stat_bin: binwidth defaulted to range/30. Use 'binwidth = x' to adjust this.
```

<img src="figure/unnamed-chunk-4-1.png" title="plot of chunk unnamed-chunk-4" alt="plot of chunk unnamed-chunk-4" style="display: block; margin: auto;" />

<a href="#top">Back to top</a>
 
# Aesthetics

## Add Outlines to Bars


```r
ggplot(iris,aes(Sepal.Width,fill=Species))+
  geom_histogram(binwidth=.1,    # Fixed Bin-width
                 alpha=0.7,      # Make Slightly transparent
                 color='black',  # Add Outline
                 size=0.4)       # Thickness of Outline
```

<img src="figure/unnamed-chunk-5-1.png" title="plot of chunk unnamed-chunk-5" alt="plot of chunk unnamed-chunk-5" style="display: block; margin: auto;" />

## Modify Axes


```r
ggplot(iris,aes(Sepal.Width,fill=Species))+
  geom_histogram(binwidth=.1,alpha=0.7,color='black',size=0.4) +
  scale_x_continuous('Sepal Width')+          # Add label to x-axis
  scale_y_continuous('Count')+                # Add label to y-axis
  scale_fill_discrete('Iris Species')+        # Add label to legend
  theme(axis.text.x=element_text(size=14),    # Change x-axis value text-size
        axis.title.x=element_text(size=18),   # Change x-axis label text-size
        axis.text.y=element_text(size=14),    # Change y-axis value text-size
        axis.title.y=element_text(size=18),   # Change y-axis label text-size
        legend.text=element_text(size=14),    # Change legend value text-size
        legend.title=element_text(size=16))   # Change legend title text-size
```

<img src="figure/unnamed-chunk-6-1.png" title="plot of chunk unnamed-chunk-6" alt="plot of chunk unnamed-chunk-6" style="display: block; margin: auto;" />

<a href="#top">Back to top</a>

# More Resources
- [Source as RMarkdown](https://github.com/rweyant/bertplot/blob/master/R/tutorials/ggplot-histogram/ggplot-histogram.Rmd)
- [docs.ggplot2.org](http://docs.ggplot2.org/0.9.3/geom_histogram.html)

