library("gistr")
library("geojsonio")

# read in data.csv
dat <- read.csv('data.csv', stringsAsFactors = FALSE)

# convert data.frame to geojson
json <- geojson_json(dat, lat='lat', lon='long')

# render map to geojson file
geojson_write(json, file="soylocs.geojson")
