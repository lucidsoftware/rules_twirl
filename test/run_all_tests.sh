#!/usr/bin/env bash

set -e

./test/TwirlCompilerBazelE2ETest.sh
if [ "${1}" == "ci" ]
  bazel_opts="--output_base=$HOME/.cache/bazel
--batch
--host_jvm_args=-Xmx500m
--host_jvm_args=-Xms500m"

  bazel_test_opts="--config=ci
--local_resources=400,1,1.0
--experimental_repository_cache=\"$HOME/.bazel_repository_cache\""
fi

# TODO: Once the Bazel integration testing library is further along, we should
# migrate to it
bazel ${bazel_opts} test ${bazel_test_opts} //test:twirl-compiler-test --test_output=errors
