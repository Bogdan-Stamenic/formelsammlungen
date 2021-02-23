all:
	@echo Usage:
	@echo \"make template.pdf\" for template PDF.
	@echo \"make fuw\" for Technische Felder und Wellen.
	@echo
	@echo \"make a\" to make all of the above.

a:
	make template.pdf
	make fuw

fuw:
	make fuw_fs.pdf

template.pdf: FORCE
	pdflatex template.tex
	pdflatex template.tex
	make clean

fuw_fs.pdf: FORCE
	pdflatex fuw_fs.tex
	pdflatex fuw_fs.tex
	make clean

clean: FORCE
	rm -rf *.aux *.log *.nvm *.tic *.toc\
		*.fdb_latexmk *.fls *.synctex.gz\
		.*.un~ settings/.*.un~ util/.*.un~\
		*~ settings/*~ util/*~

FORCE:
