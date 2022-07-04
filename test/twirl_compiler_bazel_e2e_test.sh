#!/usr/bin/env bash

set -e

bazel test //test:twirl-compiler-test

# Added an extra option of logback.configurationFile just to show that the encoding will be used regardless of other JVM options used.
bazel test --action_env JAVA_TOOL_OPTIONS="-Dlogback.configurationFile=/path/to/config.xml -Dfile.encoding=UTF-8" //test:twirl-compiler-utf8-test
