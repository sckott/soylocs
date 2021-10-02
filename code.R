library("gistr")
# library("geojsonio")
library("whisker")

# read in data.csv
dat <- read.csv('data.csv', stringsAsFactors = FALSE)

# convert data.frame to geojson
# json <- geojson_json(dat, lat='lat', lon='long')

# render map to geojson file
# geojson_write(json, file="soylocs.geojson")

# make mapbox map
make_index <- function(x) {
  outfile <- "index.html"
  filepath <- "singlemap.html"
  places <- apply(x, 1, as.list)
  ff <- paste(readLines(filepath), collapse = "\n")
  rr <- whisker.render(ff)
  write(rr, file = outfile)
}

make_index(dat)
