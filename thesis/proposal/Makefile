# Build the proposal.
#
#   make          build the PDF
#   make open     build and open it
#   make watch    rebuild automatically on save (needs entr)
#   make clean    remove build artefacts

MAIN    := proposal
TEX     := $(HOME)/.local/bin/tectonic
SOURCES := $(MAIN).tex preamble.tex references.bib $(wildcard sections/*.tex)

.PHONY: all open watch clean

all: $(MAIN).pdf

$(MAIN).pdf: $(SOURCES)
	$(TEX) $(MAIN).tex

open: $(MAIN).pdf
	open $(MAIN).pdf

watch:
	ls $(SOURCES) | entr -c $(TEX) $(MAIN).tex

clean:
	rm -f $(MAIN).pdf $(MAIN).aux $(MAIN).log $(MAIN).out $(MAIN).toc \
	      $(MAIN).bbl $(MAIN).bcf $(MAIN).blg $(MAIN).run.xml
