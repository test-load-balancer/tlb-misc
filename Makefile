xconf-pune-file-name := tlb-xconf-pune-2010
set-part-file-name := set-part-spike


default: show-set-part

%.pdf: %.tex
	pdflatex $*.tex
	pdflatex $*.tex

show-set-part: ${set-part-file-name}.pdf
	evince ${set-part-file-name}.pdf

# tlb-xconf-pune-2010.pdf: ${xconf-pune-file-name}.tex
# 	pdflatex ${xconf-pune-file-name}.tex
# 	pdflatex ${xconf-pune-file-name}.tex

show-pune: ${xconf-pune-file-name}.pdf
	evince ${xconf-pune-file-name}.pdf

clean:
	ls ${xconf-pune-file-name}.* | grep -v .tex$ | xargs rm

