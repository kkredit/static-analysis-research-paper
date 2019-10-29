DOCNAME := ResearchPaper

PRESDIR := presentation
PRESNAME := $(PRESDIR)/presentation.pdf

.PHONY: clean
.PHONY: default
.PHONY: all
.PHONY: full-clean

default: all
all: $(DOCNAME).pdf $(PRESNAME).pdf

$(DOCNAME).pdf: $(DOCNAME).tex
	pdflatex $(DOCNAME).tex
	pdflatex $(DOCNAME).tex

$(PRESNAME).pdf:
	$(MAKE) -C $(PRESDIR)

full-clean: clean
	$(MAKE) -C $(PRESDIR) full-clean
	rm -rf *.pdf

clean:
	$(MAKE) -C $(PRESDIR) clean
	rm -rf *.aux *.log *.out *.fls *.fdb_latexmk *.synctex.gz
