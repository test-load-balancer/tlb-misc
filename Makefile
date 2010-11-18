xconf-pune-file-name := tlb-xconf-pune-2010

default: show-pune

tlb-xconf-pune-2010.pdf: ${xconf-pune-file-name}.tex
	pdflatex ${xconf-pune-file-name}.tex
	pdflatex ${xconf-pune-file-name}.tex

show-pune: ${xconf-pune-file-name}.pdf
	evince ${xconf-pune-file-name}.pdf

clean:
	ls ${xconf-pune-file-name}.* | grep -v .tex$ | xargs rm