#!/usr/bin/env bash

set -euo pipefail

if [ "$#" -eq 0 ] || [ "$1" != check ]; then
    bazel build $(bazel query 'kind("scala_format_test", //...)')
    bazel query 'kind("scala_format_test", //...)' --output package | while read package; do bazel-bin/"$package"/*-format .; done
else
    bazel query 'kind("scala_format_test", //...)' | xargs bazel test
fi

if [ "$#" -eq 0 ] || [ "$1" != check ]; then
    bazel run //dev:buildifier
else
    bazel run //dev:buildifier_check
fi
