#!/bin/bash

git checkout main -- source
git checkout main -- shared
git checkout main -- make.bat
git checkout main -- Make*

make html
rm -r docs
mv build/html docs
touch docs/.nojekyll

rm -r -f source shared build make.bat Makefile #add -f to ignore if file doesn't exist
