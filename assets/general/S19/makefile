all:

schedule.pdf: schedule.tex
	pdflatex schedule.tex
	pdflatex schedule.tex
	cp schedule.pdf ../../

syllabus.pdf: syllabus.tex
	pdflatex syllabus.tex
	pdflatex syllabus.tex
	cp syllabus.pdf ../../

proctoring.pdf: proctoring.tex
	pdflatex proctoring.tex
	pdflatex proctoring.tex
	cp proctoring.pdf ../../

.PHONY: clean

clean:
	rm -f *.aux *.log *.out *.synctex.gz
	rm -f schedule.pdf syllabus.pdf proctoring.pdf

