load("@rules_scala_annex//rules:scala.bzl", "scala_test")
load("//twirl:twirl.bzl", "twirl_templates")

def generate_twirl_test_targets(scala_version):
    # For example 2.13 -> 2-13 or 2_13
    scala_version_dash = scala_version.replace(".", "-")
    scala_version_underscore = scala_version.replace(".", "_")

    twirl_templates(
        name = "twirl-test-templates-basic-{}".format(scala_version_dash),
        srcs = [
            "twirl-templates/twirl/com/foo/views/hello.scala.html",
            "twirl-templates/twirl/com/foo/views/hello.scala.js",
            "twirl-templates/twirl/com/foo/views/hello.scala.txt",
            "twirl-templates/twirl/com/foo/views/hello.scala.xml",
        ],
        scala_version = scala_version,
        source_directory = "twirl-templates",
        visibility = ["//visibility:public"],
    )

    twirl_templates(
        name = "twirl-test-templates-additional-imports-{}".format(scala_version_dash),
        srcs = [
            "twirl-templates/twirl/com/foo/views/addImports.scala.txt",
        ],
        additional_imports = ["rulestwirl.test.Person"],
        scala_version = scala_version,
        source_directory = "twirl-templates",
        visibility = ["//visibility:public"],
    )

    twirl_templates(
        name = "twirl-test-templates-custom-formatter-{}".format(scala_version_dash),
        srcs = [
            "twirl-templates/twirl/com/foo/views/customFormatter.scala.txt",
        ],
        additional_imports = ["rulestwirl.test.Person"],
        scala_version = scala_version,
        source_directory = "twirl-templates",
        template_formats = {
            "txt": "rulestwirl.test.StrangeTxtFormat",
        },
        visibility = ["//visibility:public"],
    )

    scala_test(
        name = "twirl-compiler-test-{}".format(scala_version_dash),
        srcs = [
            "Person.scala",
            "StrangeTxtFormatter.scala",
            "TwirlCompilerTest.scala",
            ":twirl-test-templates-additional-imports-{}".format(scala_version_dash),
            ":twirl-test-templates-basic-{}".format(scala_version_dash),
            ":twirl-test-templates-custom-formatter-{}".format(scala_version_dash),
        ],
        scala_version = scala_version,
        deps = [
            "@twirl_test_{}//:org_playframework_twirl_twirl_api_{}".format(scala_version_underscore, scala_version_underscore),
            "@twirl_test_{}//:org_specs2_specs2_common_{}".format(scala_version_underscore, scala_version_underscore),
            "@twirl_test_{}//:org_specs2_specs2_core_{}".format(scala_version_underscore, scala_version_underscore),
            "@twirl_test_{}//:org_specs2_specs2_matcher_{}".format(scala_version_underscore, scala_version_underscore),
        ],
    )
