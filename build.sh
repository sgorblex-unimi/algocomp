#!/bin/bash 
# Build two times to generate indices, references, citations and all that jazz. 
pdflatex -shell-escape -file-line-error -synctex=1 main.tex && pdflatex -shell-escape -file-line-error -synctex=1 main.tex
