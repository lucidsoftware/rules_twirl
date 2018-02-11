#!/usr/bin/env bash

# Used to update the skydoc github pages site from travis
set -e

eval "$(ssh-agent -s)"
chmod 600 ./lemur_rsa
ssh-add ./lemur_rsa

docs_folder=docs
rm -rf ${docs_folder}
mkdir ${docs_folder}
unzip $(bazel info bazel-bin)/twirl/twirl-compiler-docs-skydoc.zip -d $(bazel info workspace)/${docs_folder}/

git config user.email "ops+lucidlemur@lucidchart.com"
git config user.name "Lucid Lemur"
git add "${docs_folder}"
git commit -m "Travis #$TRAVIS_BUILD_NUMBER updating doc. [skip ci]"
git subtree push --prefix ${docs_folder} origin gh-pages >/dev/null 2>&1
