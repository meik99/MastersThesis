#!/usr/bin/env bash

set -eu

ls -lah

mkdir -p output

pdflatex -halt-on-error -file-line-error -interaction=nonstopmode -synctex=1 -output-format=pdf MAIN.tex
biber MAIN
pdflatex -halt-on-error -file-line-error -interaction=nonstopmode -synctex=1 -output-format=pdf MAIN.tex
mv MAIN.pdf output/thesis.pdf


