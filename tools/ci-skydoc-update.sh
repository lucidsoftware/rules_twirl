#!/usr/bin/env bash

# Used to update the skydoc github pages site from travis
set -e

eval "$(ssh-agent -s)"
chmod 600 ./lemur_rsa
ssh-add ./lemur_rsa

rm -rf docs
mkdir docs
unzip $(bazel info bazel-bin)/twirl/twirl-compiler-docs-skydoc.zip -d $(bazel info workspace)/docs/

git config user.email "ops+lucidlemur@lucidchart.com"
git config user.name "Lucid Lemur"
git add "docs/"
git commit -m "Travis #$TRAVIS_BUILD_NUMBER updating doc. [skip ci]"
git push --force origin gh-pages >/dev/null 2>&1
