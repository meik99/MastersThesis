#!/usr/bin/env bash

set -eu

ls -lah

mkdir -p build
mkdir -p output

find . -type d -not -name "build" -not -path "./build/*" -printf '%P\n' \
    | while IFS= read -r dir
do
    mkdir -p "build/$dir"
done

pdflatex -halt-on-error -file-line-error -interaction=nonstopmode -synctex=1 -output-format=pdf -output-directory=./build MAIN.tex
ls -lah
pushd build || exit 10
biber --input-directory=../ MAIN
popd || exit 20
pdflatex -halt-on-error -file-line-error -interaction=nonstopmode -synctex=1 -output-format=pdf -output-directory=./build MAIN.tex

mv build/MAIN.pdf output/thesis.pdf


