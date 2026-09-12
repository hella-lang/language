NAME=hellaLangSpec
SPEC=$(NAME).tex

pdf:
	pdflatex $(SPEC)
	makeindex $(NAME).idx
	pdflatex $(SPEC)
	makeindex $(NAME).idx
	pdflatex $(SPEC)
	pdflatex $(SPEC)

dvi:
	latex $(SPEC)
	makeindex $(NAME).idx
	latex $(SPEC)
	makeindex $(NAME).idx
	latex $(SPEC)
	latex $(SPEC)

help:
	@echo "Goals:"
	@echo "  pdf, dvi: generate the pdf/dvi file containing the spec"
	@echo "  cleanish: remove [pdf]latex generated intermediate files"
	@echo "  clean: remove all generated files"

cleanish:
	rm -f *.aux *.log *.toc *.out *.idx *.ilg *.ind

clean: cleanish
	rm -f *.dvi *.pdf
