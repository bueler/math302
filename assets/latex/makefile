all: schedule.pdf

%.pdf: %.tex
	pdflatex $*
	pdflatex $*

.PHONY: clean

clean:
	@rm -f *.aux *.log *.out *.synctex.gz

