all:
	make template.pdf

template.pdf: template.tex util/*
	pdflatex template.tex
	pdflatex template.tex
	make clean

clean: FORCE
	rm *.aux *.log *.nvm *.tic *.toc *~

FORCE:
