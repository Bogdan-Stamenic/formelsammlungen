# Formelsammlungen

## What is this?
This is supposed to be a nice skeleton for writing collections of scientific and mathematic formulas (german: Formelsammlung) in LaTeX for TUM-lectures (possibly other places as well, if applicable).
When a *Formelsammlung* (FS) is finished, then you and your peers will have a neatly typeset collection of formulas to do the exercises, study, and write the exam for that subject!

For the uninitiated: LaTeX allows for typesetting scientific formulas and compiling them into PDF-documents.

**Disclaimer: all Formelsammlungen are provided as-is, and can contain errors! The author takes no responsibility for any mistakes made (or any consquences thereof) while using these studying aids!**

Keeping that in mind, this project currently contains the following FS:
 - Technische Felder und Wellen,
 - Antennas and Wave Propagation,
 - High Frequency Components, Amplifiers and Oscillators.

## Download the project
You'll need to have git installed. Once git is installed, open up your terminal (or Windows PowerShell).
Change to the directory you'd like to save the project to and run the following command:
```bash
$ git clone https://github.com/Bogdan-Stamenic/Formelsammlungen.git
```
You should now have the `formelsammlungen/` directory, but you'll still need to compile the Formelsammlung's PDF.

## How to compile
### Linux
Installed the `texlive-most` or the `texlive-full` package collections using your package manager (apt, pacman, etc.). This will let you compile the LaTeX code.

When LaTeX is installed, run the `make` command to get a list of options. To compile the Formelsammlung for "Technische Felder und Wellen", e.g., run `make fuw`.

### Windows
Search online for "texlive" and install it to be able to compile LaTeX documents.
Once installed, open a PowerShell, change directories to the project folder and use the `pdflatex <formelasammlung name>` to compile.
