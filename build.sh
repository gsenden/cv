#!/bin/sh
mkdir -p dist
npx resume export ./dist/resume.pdf --theme . > /dev/null 2>&1
echo "Generated ./dist/resume.pdf"
npx resume export ./dist/resume.html --theme . > /dev/null 2>&1
echo "Generated ./dist/resume.html"