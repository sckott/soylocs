all: readwrite

readwrite:
	Rscript --vanilla -e "source('code.R')"

gist:
	Rscript --vanilla -e "source('gist.R')"
