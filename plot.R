library(gpclib)
library(maptools)
library(RColorBrewer)
library(ggplot2)
library(maps)

gpclibPermit()

# Import the dataset
mini <- read.csv("fixed-noaa-mini.csv")
states <- map_data("state")

# Create the map
p <- ggplot()
p <- p + geom_polygon( data=states, aes(x=long, y=lat, group = group),colour="white" )
p <- p + geom_point( data=mini, aes(x=mini.data$X.101.5, y=mini.data$X32.2), color="coral1")
p <- p + labs(title = "U.S. Damaging Hail 1955-2011")
p

