#!/bin/bash

set -e

bazel clean && bazel test //test:twirl-compiler-test
