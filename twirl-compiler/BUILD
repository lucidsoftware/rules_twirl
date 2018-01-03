load("@io_bazel_rules_scala//scala:scala.bzl", "scala_binary")
load("//twirl:twirl.bzl", "twirl_templates")

twirl_templates(
  name = "twirl-test",
  visibility = ["//visibility:public"],
  source_directory = "src/main/twirl",
  srcs = glob(["src/main/twirl/**"]),
  additional_imports = ["a", "b"],
  include_play_imports = True,
  template_formats = {
    "html": "bar"
  },
)

scala_binary(
  name = "twirl-compiler",
  srcs = glob(["src/main/**/*.scala"]),
  data = glob(["src/main/twirl/**"]),
  visibility = ["//visibility:public"],
  main_class = "com.lucid.twirl.TemplateCompiler",
  deps = [
    "@com_github_scopt_scopt_2_11//jar",
    "@com_typesafe_play_twirl_api_2_11//jar",
    "@com_typesafe_play_twirl_compiler_2_11//jar",
    "@com_typesafe_play_twirl_parser_2_11//jar",
    "@scala//:scala-compiler",
    "@scala//:scala-library",
    "@scala//:scala-parser-combinators",
    "@scala//:scala-reflect",
  ],
)
