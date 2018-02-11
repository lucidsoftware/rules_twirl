#!/usr/bin/env bash

set -e

bazel test //test:twirl-compiler-test
