#!/bin/sh

# Python Beautification
autoflake --in-place --remove-all-unused-imports ./**/*.py
isort ./**/*.py
black ./**/*.py
pylint ./**/*.py >pylint.txt

# Git Update
git add .
git commit -m "$1"
git push
