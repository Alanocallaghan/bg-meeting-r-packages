RMD=$(wildcard *.Rmd)
HTML:=$(RMD:%.Rmd=%.html)

all: $(HTML)


%.html: %.Rmd
	Rscript --vanilla -e 'rmarkdown::render("$<")'
