#!/usr/bin/env bash

echo "Running buildifier"
bazel run //:buildifier -- -r --lint=warn "$(bazel info workspace)"
