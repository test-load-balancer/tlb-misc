set-part-file-name := set-part-spike
tlb-intro-file-name := tlb-intro

default: show-tlb-intro

%.pdf: %.tex
	pdflatex $*.tex
	pdflatex $*.tex

show-set-part: ${set-part-file-name}.pdf
	evince ${set-part-file-name}.pdf

show-tlb-intro: ${tlb-intro-file-name}.pdf
	evince ${tlb-intro-file-name}.pdf

clean:
	rm *.aux *.log *.nav *.out *.pdf *.snm *.toc	

