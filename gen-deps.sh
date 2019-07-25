#!/bin/sh -e
cd "$(dirname "$0")"

bazel run @unpinned_twirl//:pin
bazel run @unpinned_twirl_test//:pin
