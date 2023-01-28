#!/bin/bash

git checkout main -- source
git checkout main -- shared
git checkout main -- make*
git checkout main -- Make*

make html
rm -r docs
mv build/html docs
touch docs/.nojekyll

rm -r source shared make* Makefile 