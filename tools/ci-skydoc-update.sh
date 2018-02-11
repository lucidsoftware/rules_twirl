#!/usr/bin/env bash

# You need write access to origin for this script to work
#
set -e

skydoc_file="twirl-compiler-docs-skydoc.zip"
rm -rf docs
mkdir docs
unzip "$(bazel info)/twirl/${skydoc_file} -d docs/"

git config user.email "ops+lucidlemur@lucidchart.com"
git config user.name "Lucid Lemur"
git add "docs/"
git commit -m "Travis #$TRAVIS_BUILD_NUMBER updating doc. [skip ci]"
git push --force origin gh-pages >/dev/null 2>&1
