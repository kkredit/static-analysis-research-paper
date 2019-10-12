DOCNAME := ResearchPaper

.PHONY: clean
.PHONY: default
.PHONY: full-clean

default: $(DOCNAME).pdf

$(DOCNAME).pdf: $(DOCNAME).tex $(REQ_INPUTS)
	pdflatex $(DOCNAME).tex
	pdflatex $(DOCNAME).tex

full-clean: clean
	rm -rf *.pdf

clean:
	rm -rf *.aux *.log *.out *.fls *.fdb_latexmk *.synctex.gz
