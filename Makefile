all:
	@echo Usage:
	@echo \(1\) \"make template.pdf\"   Template PDF, to see how an FS could look like,
	@echo \(2\) \"make fuw\"            Technische Felder und Wellen,
	@echo \(3\) \"make aawp\"           Antennas and Wave Propagation,
	@echo \(4\) \"make hfcomp\"         High-Frequency, Components, Amplifiers and Oscillators,
	@echo \(5\) \"make hfmess\"         Hochfrequenzmesstechnik \(Warning: unfinished + abandoned\),
	@echo \(6\) \"make caem\"           Computational and Analytical Methods in Electromagnetics,
	@echo
	@echo \(6\) \"make a\" to make all of the above.

a:
	make template.pdf
	make fuw
	make aawp
	make hfc
	make hfm

fuw:
	make fuw_fs.pdf

aawp:
	make aawp_fs.pdf

hfc:
	make hfcomp_fs.pdf

hfm:
	make hfmess_fs.pdf

caem:
	make caem_fs.pdf

template.pdf: FORCE
	pdflatex template.tex
	pdflatex template.tex
	make clean

fuw_fs.pdf: FORCE
	pdflatex fuw_fs.tex
	pdflatex fuw_fs.tex
	make clean

aawp_fs.pdf: FORCE
	pdflatex aawp_fs.tex
	pdflatex aawp_fs.tex
	make clean

hfcomp_fs.pdf: FORCE
	pdflatex hfcomp_fs.tex
	pdflatex hfcomp_fs.tex
	make clean

hfmess_fs.pdf: FORCE
	pdflatex hfmess_fs.tex
	pdflatex hfmess_fs.tex
	make clean

caem_fs.pdf: FORCE
	pdflatex caem_fs.tex
	pdflatex caem_fs.tex
	make clean

clean: FORCE
	rm -rf *.aux *.log *.nvm *.tic *.toc\
		*.fdb_latexmk *.fls *.synctex.gz\
		.*.un~ settings/.*.un~ util/.*.un~\
		*~ settings/*~ util/*~ *.out

FORCE:

