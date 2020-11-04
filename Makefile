all:
	make template.pdf

template.pdf: template.tex util/*
	pdflatex template.tex
	pdflatex template.tex
	make clean

clean: FORCE
	rm -r *.aux *.log *.nvm *.tic *.toc .*.un~ settings/.*.un~ util/.*.un~ *~ settings/*~ util/*~

FORCE:
