# Formelsammlungen

## What is this?
This is supposed to be a nice skeleton for writing collections of scientific and mathematic formulas (german: Formelsammlung) in LaTeX for TUM-lectures (possibly other places as well, if applicable).
When a _Formelsammlung_ is finished, then you and your peers will have a neatly typeset collection of formulas to do the exercises and study for that subject!

For the uninitiated: LaTeX allows for typesetting scientific formulas and compiling them into PDF-documents.

## Download the project
You'll need to have git installed. Once git is installed, open up your terminal (or Windows PowerShell).
Change to the directory you'd like to save the project to and run the following command:
```
$ git clone https://github.com/Bogdan-Stamenic/Formelsammlungen.git
```
You should now have the `Formelsammlungen/` directory, but you'll still need to compile the Formelsammlung's PDF.

## How to compile
Users of linux must've first installed the `texlive-most` or the `texlive-full` package collections using their package manager (apt, pacman, etc.), in order to compile LaTeX code.

When LaTeX is installed, run the `make` command to get a list of options. To compile the Formelsammlung for "Technische Felder und Wellen", e.g., run `make fuw`.

