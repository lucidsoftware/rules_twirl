#! /bin/bash
##
## Build and deploy the twirl compiler jar

set -euo pipefail

# Build and deploy package
bazel clean --expunge
bazel run  --stamp \
  --define "maven_repo=https://oss.sonatype.org/service/local/staging/deploy/maven2" \
  --define gpg_sign=true \
  //twirl-compiler-cli:exported-twirl-compiler-3.publish

bazel run  --stamp \
  --define "maven_repo=https://oss.sonatype.org/service/local/staging/deploy/maven2" \
  --define gpg_sign=true \
  //twirl-compiler-cli:exported-twirl-compiler-2-13.publish

echo "Deployment complete."
