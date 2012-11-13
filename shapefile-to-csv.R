# Require the maptools package
require(maptools)

# Import the shapefile as a SpatialPointsDataFrame
noaa.hail.shapefile <- readShapePoints("~/workspace/hail.shp")

# Export the shapefile to csv
write.table(noaa.hail.shapefile, "noaa-hail.csv", sep =",")