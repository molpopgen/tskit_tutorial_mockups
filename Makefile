HTMLFILES:=html/summstats.html

html/%.html: mdinputs/%.Rmd
	RETICULATE_PYTHON=`which python3` r -e "rmarkdown::render(\"$<\", output_file=\"$@\", output_dir=\"./html\")"

all: ${HTMLFILES}

html/summstats.html: mdinputs/summstats.Rmd

clean:
	rm -f ${HTMLFILES}

