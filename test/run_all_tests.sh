#!/usr/bin/env bash

set -e

./test/twirl_compiler_bazel_e2e_test.sh

# TODO: Once the Bazel integration testing library is further along, we should
# migrate to it
bazel test //test:twirl-compiler-test --test_output=errors
