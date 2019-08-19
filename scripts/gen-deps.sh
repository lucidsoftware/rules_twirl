#!/bin/sh -e
cd "$(dirname "$0")"

bazel run @unpinned_play_2_5_twirl_compiler_cli//:pin
bazel run @unpinned_play_2_6_twirl_compiler_cli//:pin
bazel run @unpinned_play_2_7_twirl_compiler_cli//:pin

bazel run @unpinned_twirl_test//:pin
