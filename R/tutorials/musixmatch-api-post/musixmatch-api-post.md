---
html_document:
    toc: true
title: "Musixmatch API Wrapper in R"
---




<img src="figure/unnamed-chunk-1-1.png" title="plot of chunk unnamed-chunk-1" alt="plot of chunk unnamed-chunk-1" style="display: block; margin: auto auto auto 0;" />

Musixmatch is a website that has lots of data on musicians, their album, songs and lyrics.  They've created an API, which anyone can use to collect data, such as lyrics, genres, album and track metadata, and much more.  The goal of this API wrapper is to facilitate using the API in R, and collecting data in a convenient fashion

## Installation


```r
devtools::install_github('rweyant/musixmatch')
```

## Basic Usage

First, you need to get an [API Key](https://developer.musixmatch.com/signup).

```r
library(musixmatch)

# Set API key in a place all the functions have access to
set_apikey(YOUR_APIKEY)
```

## Get basic data

### Search for specific artists

Here you can find basic information about artists that match the search term.  If you specify `simplify=FALSE` the result is the full XML document parsed.


```r
# Return list of full XML result in a list
result <- search_artist(artist = 'slayer',simplify=FALSE)
```

Otherwise, a simplified `data.frame` is returned.


```r
# Return data.frame of most useful fields to identify artist
head(search_artist('slayer'))
```

```
        id                          name country
1     2683                        Slayer      US
2 11222667                        Slayer      GB
3     7679                     Leo Sayer      GB
4 24760214      Buffy the Vampire Slayer    <NA>
5 27767004 Buffy the Vampire Slayer Cast    <NA>
6 24945497         Slayer feat. Revmatix    <NA>
```

<a href="#top">Back to top</a>

### Get Artist Discography

This function identifies artists using the artist_id returned from the previous function.  It returns all the albums (sometimes multiple versions of an album) musixmatch has listed for an artist.  You can similarly get the full XML document as a list using the `simplify=FALSE` option.


```r
head(get_artist_albums(2683))
```

```
  album_id                           album_mbid
1 20501709 3b5df951-81a4-4090-890c-9ec4e45f9625
2 19608760 b0af1e98-b37b-46bb-8601-539b64483809
3 15718965                                 <NA>
4 10666567 24a80dbb-a639-48e5-80be-9fbf07d4f2bd
5 14234192 d49815dc-4140-4408-a9f3-af3b80bce152
6 13855350 67bac511-0e6a-4110-9296-8401986fba4f
              album_name album_track_count
1 ’Til Death Do Us Part…                19
2     B-Sides & Rarities                21
3        Christ Illusion                10
4        Christ Illusion                10
5        Christ Illusion                14
6        Christ Illusion                10
  album_release_date album_release_type album_rating
1               2006              Album           10
2               2013              Album           42
3         2012-10-16              Album           19
4         2006-08-08              Album           65
5         2007-07-24              Album           65
6         2009-06-26              Album           65
```

## Next Steps

Currently supports all methods for the musixmatch API (e.g. track.lyrics.get, album.tracks.get, artist.related..get).  Not all methods have a `simplify` option yet, but these options are being actively developed.  Check the [GitHub](https://github.com/rweyant/musixmatch) for updates.


<br>

#### More Resources
- [Source as RMarkdown](https://github.com/rweyant/bertplot/blob/master/R/tutorials/musixmatch-api-post/musixmatch-api-post.Rmd)
- [Package Source on Github](https://github.com/rweyant/musixmatch)
- [Musixmatch API Documentation](https://developer.musixmatch.com/documentation)
