---
title       : Weather Alamanc 
subtitle    : Comparing Weather related data for 2014 for major US cities
author      : Me
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft, selfcontained}
knit        : slidify::knit2slides

---


## Weather Almanac

How you every wondered when the best time to travel for the best weather? 

Have your ever been interested looking at historically weather patterns?

Now you can compare weather related data for Dec 2013 to Dec 2014 from these 5 major US cities: Ankorage, Boston, FT_Lauderdale, Los_Angeles, San_Francisco

--- .class #id 

## Comparison of Temperature 

You can now evaulated the weather realted values for US city for 2014

![plot of chunk unnamed-chunk-2](assets/fig/unnamed-chunk-2.png) 

---

## Potential Weather Variables to Plot
You can select among multiple weather related variables to examine or compare
list of all variables

```
##  [1] "EST"                       "Max.TemperatureF"         
##  [3] "Mean.TemperatureF"         "Min.TemperatureF"         
##  [5] "Max.Dew.PointF"            "MeanDew.PointF"           
##  [7] "Min.DewpointF"             "Max.Humidity"             
##  [9] "Mean.Humidity"             "Min.Humidity"             
## [11] "Max.Sea.Level.PressureIn"  "Mean.Sea.Level.PressureIn"
## [13] "Min.Sea.Level.PressureIn"  "Max.VisibilityMiles"      
## [15] "Mean.VisibilityMiles"      "Min.VisibilityMiles"      
## [17] "Max.Wind.SpeedMPH"         "Mean.Wind.SpeedMPH"       
## [19] "Max.Gust.SpeedMPH"         "PrecipitationIn"          
## [21] "CloudCover"                "Events"                   
## [23] "WindDirDegrees"            "City"
```

Data downloaded from www.wunderground.com

---

Screen shot

![width](figures/WeatherApp1.PNG)

See app at https://saj2326.shinyapps.io/DevDataProd/


