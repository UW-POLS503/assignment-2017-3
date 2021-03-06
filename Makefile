RMD_FILE = index.Rmd
PDF_FILE = assignment-2017-3.pdf
HTML_FILE = ${RMD_FILE:%.Rmd=%.html}
BIB = assignment3.bib

all: $(PDF_FILE) $(HTML_FILE) $(MD_FILE) $(BIB)

$(PDF_FILE): $(RMD_FILE) $(wildcard includes/*.tex) $(BIB)
	Rscript -e 'rmarkdown::render("$<",output_format="pdf_document",output_file="$@")'

$(HTML_FILE): $(RMD_FILE) $(wildcard includes/*.html) $(BIB)
	Rscript -e 'rmarkdown::render("$<",output_format="html_document",output_file="$@")'
