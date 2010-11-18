default: show-pune

tlb-xconf-pune-2010.pdf: tlb-xconf-pune-2010.tex
	pdflatex tlb-xconf-pune-2010.tex
	pdflatex tlb-xconf-pune-2010.tex

show-pune: tlb-xconf-pune-2010.pdf
	evince tlb-xconf-pune-2010.pdf