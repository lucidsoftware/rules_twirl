workspace(name = "io_bazel_rules_twirl")

rules_scala_version = "827124ad15cfc9da87506de989f6ef2ba70ec0c6" # update this as needed
http_archive(
  name = "io_bazel_rules_scala",
  url = "https://github.com/bazelbuild/rules_scala/archive/%s.zip"%rules_scala_version,
  type = "zip",
  strip_prefix= "rules_scala-%s" % rules_scala_version
)

load("@io_bazel_rules_scala//scala:scala.bzl", "scala_repositories")
scala_repositories()

load("@io_bazel_rules_scala//specs2:specs2_junit.bzl", "specs2_junit_repositories")
specs2_junit_repositories()

load("@io_bazel_rules_scala//scala:toolchains.bzl", "scala_register_toolchains")
scala_register_toolchains()
git_repository(
    name = "io_bazel_rules_sass",
    remote = "https://github.com/bazelbuild/rules_sass.git",
    tag = "0.0.3",
)
load("@io_bazel_rules_sass//sass:sass.bzl", "sass_repositories")
sass_repositories()

git_repository(
    name = "io_bazel_skydoc",
    remote = "https://github.com/bazelbuild/skydoc.git",
    tag = "0.1.4",
)
load("@io_bazel_skydoc//skylark:skylark.bzl", "skydoc_repositories")
skydoc_repositories()
maven_jar(
  name = "com_github_scopt_scopt_2_11",
  artifact = "com.github.scopt:scopt_2.11:jar:3.7.0",
  sha1 = "2f4b95257d082feb9e2a353a9a669c766b850931",
)

maven_jar(
  name = "com_typesafe_play_twirl_api_2_11",
  artifact = "com.typesafe.play:twirl-api_2.11:1.1.1",
  sha1 = "b029d9500caec7fe30f9a485fc654ee82d40d404",
)

maven_jar(
  name = "com_typesafe_play_twirl_compiler_2_11",
  artifact = "com.typesafe.play:twirl-compiler_2.11:1.1.1",
  sha1 = "c52e000cfe1895cd1dc9fb5c0d4ac5bbd73713cc",
)

maven_jar(
  name = "com_typesafe_play_twirl_parser_2_11",
  artifact = "com.typesafe.play:twirl-parser_2.11:1.1.1",
  sha1 = "8af782249d76c70d411305f94eff19c9906c43af",
)

maven_jar(
  name = "org_apache_commons_commons_lang3",
  artifact = "org.apache.commons:commons-lang3:3.4",
  sha1 = "5fe28b9518e58819180a43a850fbc0dd24b7c050",
)
