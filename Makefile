all: statiscript.pdf

statiscript.pdf: statiscript.Rmd
	echo 'library(rmarkdown); render("statiscript.Rmd", "pdf_document")' | R --vanilla --quiet

statiscript.html: statiscript.Rmd
	echo 'library(rmarkdown); render("statiscript.Rmd", "html_document")' | R --vanilla --quiet

notes.pdf: notes.Rmd
	echo 'library(rmarkdown); render("notes.Rmd", "pdf_document")' | R --vanilla --quiet

clean:
	rm -f statiscript.pdf \
		statiscript.html \
		notes.pdf \
		*~
