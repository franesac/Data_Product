---
title       : Data Product
subtitle    : Find your Game
author      : Francisco Javier Estrada
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Web Application functionality


This is a site where you can find the best game for you.

We only need that you provide the game detail like the Price, Score, New/Used, categoy and console.

The result contains the games that fit your filters.

--- .class #id 

## Example of data




```r
head(games)
```

```
##                        GAME SCORE        CATEGORY RELEASE.DATE
## 1      New Super Mario Bros   9.3   Genero Accion   20/11/2009
## 2 Pokemon Battle Revolution   5.8      Genero Rol   07/12/2007
## 3      Zelda: Skyward Sword   9.6   Genero Accion   18/11/2011
## 4      Super Mario Galaxy 2   9.9   Genero Accion   11/06/2010
## 5                PokePark 2   9.4 Genero Aventura   23/03/2012
## 6          Monster Hunter 3   9.3      Genero Rol   23/04/2010
##                                      SUMMARY CONSOLE NEW_USED PRICE
## 1 En un momento en que los plataformas par ?     Wii    NUEVO    67
## 2 Iba a ser revolucionario  pero al final  ?     Wii    NUEVO    63
## 3 No se puede entender la existencia de Wi ?     Wii    NUEVO    71
## 4 Nintendo expande la galaxia de Mario con ?     Wii    NUEVO    73
## 5 Secuela de PokePark: Pikachuïs Adventure ?     Wii    USADO    44
## 6 Monster Hunter 3 no es solamente el mejo ?     Wii    USADO    45
```

--- .class #id 

## Plot

The relationship between PRICE and SCORE in the GAMES dataset.


```r
require(ggplot2)
qplot(PRICE, SCORE, data = games)
```

<img src="figure/simple-plot-1.png" title="plot of chunk simple-plot" alt="plot of chunk simple-plot" style="display: block; margin: auto;" />
