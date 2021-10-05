#!/usr/bin/env bash

mkdir -p build
mkdir -p output
pdflatex -file-line-error -interaction=nonstopmode -synctex=1 -output-format=pdf -output-directory=./build MAIN.tex
pushd build || exit 10
biber --input-directory=../ MAIN
popd || exit 20
pdflatex -file-line-error -interaction=nonstopmode -synctex=1 -output-format=pdf -output-directory=./build MAIN.tex

mv build/main.pdf output/thesis.pdf


