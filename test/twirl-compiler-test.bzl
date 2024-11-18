load("@rules_scala_annex//rules:scala.bzl", "scala_test")
load("//twirl:twirl.bzl", "twirl_templates")

def generate_twirl_test_targets(scala_version):
    # For example 2.13 -> 2-13 or 2_13
    scala_version_dash = scala_version.replace(".", "-")
    scala_version_underscore = scala_version.replace(".", "_")
    scala = "zinc_{}".format(scala_version_underscore)

    if scala_version == "3":
        twirl_toolchain_name = "twirl-3"
    elif scala_version == "2.13":
        twirl_toolchain_name = "twirl-2-13"
    else:
        fail("Unsupported Scala version when generating test targets")

    twirl_templates(
        name = "twirl-test-templates-basic-{}".format(scala_version_dash),
        srcs = [
            "twirl-templates/twirl/com/foo/views/hello.scala.html",
            "twirl-templates/twirl/com/foo/views/hello.scala.js",
            "twirl-templates/twirl/com/foo/views/hello.scala.txt",
            "twirl-templates/twirl/com/foo/views/hello.scala.xml",
        ],
        source_directory = "twirl-templates",
        twirl_toolchain_name = twirl_toolchain_name,
        visibility = ["//visibility:public"],
    )

    twirl_templates(
        name = "twirl-test-templates-additional-imports-{}".format(scala_version_dash),
        srcs = [
            "twirl-templates/twirl/com/foo/views/addImports.scala.txt",
        ],
        additional_imports = ["rulestwirl.test.Person"],
        source_directory = "twirl-templates",
        twirl_toolchain_name = twirl_toolchain_name,
        visibility = ["//visibility:public"],
    )

    twirl_templates(
        name = "twirl-test-templates-custom-formatter-{}".format(scala_version_dash),
        srcs = [
            "twirl-templates/twirl/com/foo/views/customFormatter.scala.txt",
        ],
        additional_imports = ["rulestwirl.test.Person"],
        source_directory = "twirl-templates",
        template_formats = {
            "txt": "rulestwirl.test.StrangeTxtFormat",
        },
        twirl_toolchain_name = twirl_toolchain_name,
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
        deps = [
            "@twirl_test_{}//:org_playframework_twirl_twirl_api_{}".format(scala_version_underscore, scala_version_underscore),
            "@twirl_test_{}//:org_specs2_specs2_common_{}".format(scala_version_underscore, scala_version_underscore),
            "@twirl_test_{}//:org_specs2_specs2_core_{}".format(scala_version_underscore, scala_version_underscore),
            "@twirl_test_{}//:org_specs2_specs2_matcher_{}".format(scala_version_underscore, scala_version_underscore),
        ],
    )
