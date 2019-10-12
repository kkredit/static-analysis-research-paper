DOCNAME := presentation

.PHONY: clean
.PHONY: default
.PHONY: all
.PHONY: full-clean

default: all
all: $(DOCNAME).pdf

$(DOCNAME).pdf: $(DOCNAME).tex
	pdflatex $(DOCNAME).tex
	pdflatex $(DOCNAME).tex

full-clean: clean
	rm -rf *.pdf

clean:
	rm -rf *.aux *.log *.out *.fls *.fdb_latexmk *.synctex.gz
