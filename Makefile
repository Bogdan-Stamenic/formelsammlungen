all:
	make template.pdf

fuw:
	make fuw_fs.pdf

template.pdf: template.tex
	pdflatex template.tex
	pdflatex template.tex
	make clean

fuw_fs.pdf: fuw_fs.tex content/fuw/* util/* FORCE
	pdflatex fuw_fs.tex
	pdflatex fuw_fs.tex
	make clean

clean: FORCE
	rm -r *.aux *.log *.nvm *.tic *.toc\
		*.fdb_latexmk *.fls *.synctex.gz\
		.*.un~ settings/.*.un~ util/.*.un~\
		*~ settings/*~ util/*~

FORCE:
