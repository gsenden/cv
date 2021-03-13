#!/bin/sh
for resumePath in "resumes"/*
do
  mkdir -p dist
  resumeFile=$(basename "$resumePath")
  resume="${resumeFile%.*}"
  cp $resumePath resume.json
  npx resume export ./dist/${resume}.pdf --theme . > /dev/null 2>&1
  npx resume export ./dist/${resume}.html --theme . > /dev/null 2>&1
  rm resume.json
  echo '==> Resume' $resume 'generated in ./dist'
done
