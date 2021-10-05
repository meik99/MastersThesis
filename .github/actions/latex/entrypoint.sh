#!/usr/bin/env bash

set -eu

ls -lah

mkdir -p build
mkdir -p output
pdflatex -halt-on-error -file-line-error -interaction=nonstopmode -synctex=1 -output-format=pdf -output-directory=./build MAIN.tex
ls -lah
pushd build || exit 10
biber --input-directory=../ MAIN
popd || exit 20
pdflatex -halt-on-error -file-line-error -interaction=nonstopmode -synctex=1 -output-format=pdf -output-directory=./build MAIN.tex

mv build/main.pdf output/thesis.pdf


