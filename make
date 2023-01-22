#!/bin/bash

make html
rm -r docs
mv build/html docs
touch docs/.nojekyll