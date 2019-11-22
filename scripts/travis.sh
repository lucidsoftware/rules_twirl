#!/usr/bin/env bash

set -eox pipefail
cd "$(dirname "$0")/.."

case "$1" in

    "build")
        bazel build --show_progress_rate_limit=2 //...
        ;;

    "test")
        ./test/run_all_tests.sh
        ;;

    "lint")
        ./scripts/skylint.sh
        ./scripts/gen-docs.sh && git diff --exit-code docs/
        ;;
    "")
        echo "command not specified"
        exit 1
        ;;
    *)
        echo "$1 not understood"
        exit 1
        ;;
esac
