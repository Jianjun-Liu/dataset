# Require the maptools package
require(maptools)

# Enable gpclib
gpclibPermit()

# Import the shapefile as a SpatialPointsDataFrame
noaa.hail.shapefile <- readShapePoints("hail.shp")

# Export the shapefile to csv. Set row.names=FALSE to prevent index column from being written
write.table(noaa.hail.shapefile, "noaa-hail.csv", sep = ",", row.names = FALSE)