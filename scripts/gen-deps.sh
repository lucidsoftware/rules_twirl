#!/bin/bash
set -euxo pipefail

cd "$(dirname "$0")"

REPIN=1 bazel run @twirl_compiler_cli_3//:pin
REPIN=1 bazel run @twirl_compiler_cli_2_13//:pin
REPIN=1 bazel run @twirl_test_3//:pin
REPIN=1 bazel run @twirl_test_2_13//:pin
