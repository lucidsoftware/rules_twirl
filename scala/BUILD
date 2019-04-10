load(
    "@rules_scala_annex//rules:scala.bzl",
    "configure_bootstrap_scala",
    "configure_zinc_scala",
    "scala_library",
)

scala_version = "2.12.4"

compiler_classpath = [
    "@twirl_org_scala_lang_scala_compiler//jar",
    "@twirl_org_scala_lang_scala_library//jar",
    "@twirl_org_scala_lang_scala_reflect//jar",
]

runtime_classpath = [
    "@twirl_org_scala_lang_scala_library//jar",
]

configure_bootstrap_scala(
    name = "bootstrap",
    compiler_classpath = compiler_classpath,
    runtime_classpath = runtime_classpath,
    version = scala_version,
    visibility = ["//visibility:public"],
)

scala_library(
    name = "compiler_bridge",
    srcs = [
        "@compiler_bridge_2_12//:src",
    ],
    scala = ":bootstrap",
    visibility = ["//visibility:public"],
    deps = compiler_classpath + [
        "@twirl_org_scala_sbt_compiler_interface//jar",
        "@twirl_org_scala_sbt_util_interface//jar",
    ],
)

configure_zinc_scala(
    name = "zinc",
    compiler_bridge = ":compiler_bridge",
    compiler_classpath = compiler_classpath,
    runtime_classpath = runtime_classpath,
    version = scala_version,
    visibility = ["//visibility:public"],
)

alias(
    name = "default_scala",
    actual = ":zinc",
    visibility = ["//visibility:public"],
)