#!/usr/bin/env bash

set -euxo pipefail

function clean_build_output_hash {
  bazel clean
  bazel build test:twirl-test-templates-basic-3
  bazel build test:twirl-test-templates-additional-imports-3
  bazel build test:twirl-test-templates-custom-formatter-3
  # Take the hash of all files in the directory; this needs to work in both Linux and OSX
  for file in $(find bazel-bin/ -type f | sort); do shasum $file; done | shasum
}

hash0=$(clean_build_output_hash)
sleep 2  # The timestamps Twirl generates have second granularity; wait a second before re-running
hash1=$(clean_build_output_hash)

if [[ $hash0 != $hash1 ]]; then
  echo "ERROR: The twirl_templates rule has a non-deterministic output!"
  exit 1
fi
