#!/bin/bash

npm run build-production
git checkout gh-pages
cp .gitignore ../.gitignore
git rm -rf .
cp ../.gitignore .gitignore
mv public/* ./
echo andybas.com > CNAME
git add -A
git commit -m 'new gh-pages release'
git push origin gh-pages -f
git checkout master
