#!/bin/bash 
# Build two times to generate indices, references, citations and all that jazz. 
lualatex -shell-escape -file-line-error main.tex && bibtex main && lualatex -shell-escape -file-line-error main.tex && lualatex -shell-escape -file-line-error main.tex
rm -r main.aux main.bbl main.blg main.fdb_latexmk main.fls main.log main.out main.synctex.gz main.toc _minted-main
