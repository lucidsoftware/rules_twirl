"""
Load test 3rd party maven dependencies
"""

load("@rules_jvm_external//:defs.bzl", "maven_install")
load(":workspace.bzl", "twirl_version")

specs2_version = "4.20.8"

def twirl_test_3_repositories():
    twirl_test_repositories(scala_version = "3")

def twirl_test_2_13_repositories():
    twirl_test_repositories(scala_version = "2.13")

def twirl_test_repositories(scala_version):
    scala_version_underscore = scala_version.replace(".", "_")
    maven_install(
        name = "twirl_test_{}".format(scala_version_underscore),
        artifacts = [
            "org.playframework.twirl:twirl-api_{}:{}".format(scala_version, twirl_version),
            "org.specs2:specs2-common_{}:{}".format(scala_version, specs2_version),
            "org.specs2:specs2-core_{}:{}".format(scala_version, specs2_version),
            "org.specs2:specs2-matcher_{}:{}".format(scala_version, specs2_version),
        ],
        repositories = [
            "https://repo.maven.apache.org/maven2",
        ],
        fetch_sources = True,
        fail_if_repin_required = True,
        maven_install_json = "@rules_twirl//:twirl_test_{}_install.json".format(scala_version_underscore),
    )
