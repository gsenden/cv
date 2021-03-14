#!/bin/sh
for resumePath in "resumes"/*
do
  mkdir -p dist
  resumeFile=$(basename "$resumePath")
  resume="${resumeFile%.*}"
  cp $resumePath resume.json
  rm -r ./dist/assets
  cp -r ./assets ./dist/
  npx resume export ./dist/${resume}.html --theme . > /dev/null 2>&1
  node generate-pdf.js
  rm resume.json
  echo '==> Resume' $resume 'generated in ./dist'
done
