#!/usr/bin/env bash

set -e

# TODO: Once the Bazel integration testing library is further along, we should
# migrate to it
./test/twirl_compiler_bazel_e2e_test.sh
