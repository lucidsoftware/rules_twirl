#!/bin/bash
#
# Regenerates stardoc for the rules
#
# Borrowed from lucidsoftware/rules_scala
#
set -euxo pipefail

cd "$(dirname "$0")/.."

rm -fr docs/stardoc
mkdir -p docs/stardoc

bazel build //dev/stardoc:docs
tar xf "$(bazel info bazel-bin)/dev/stardoc/docs.tar" -C docs/stardoc
find docs/stardoc -size 0 -print0 | while read path; do
    rm $path
done
