#!/usr/bin/env bash

set -euxo pipefail

bazel test //test:twirl-compiler-test-2-13
bazel test //test:twirl-compiler-test-3
bazel test //test:twirl-jvm-flags-test
