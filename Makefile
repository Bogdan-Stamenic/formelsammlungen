all:
	make template.pdf

fuw: FORCE
	make fuw_fs.pdf

template.pdf: template.tex
	pdflatex template.tex
	pdflatex template.tex
	make clean

fuw_fs.pdf: fuw_fs.tex
	pdflatex fuw_fs.tex
	pdflatex fuw_fs.tex
	make clean

clean: FORCE
	rm -r *.aux *.log *.nvm *.tic *.toc .*.un~ settings/.*.un~ util/.*.un~ *~ settings/*~ util/*~

FORCE:
