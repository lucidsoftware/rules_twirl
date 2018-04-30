load("@bazel_tools//tools/build_defs/repo:java.bzl", "java_import_external")
load("@rules_scala_annex//rules/scala:workspace.bzl", "annex_scala_repository")
load("//3rdparty:maven.bzl", "list_dependencies")

def twirl_repositories():
    for dep in list_dependencies():
        if "exports" in dep["import_args"]:
            dep["import_args"]["deps"] = dep["import_args"]["exports"]
            dep["import_args"].pop("exports")
        java_import_external(**dep["import_args"])

    annex_scala_repository("twirl_scala", ("org.scala-lang", "2.12.4"), "@compiler_bridge_2_12//:src")
