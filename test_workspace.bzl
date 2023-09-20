"""
Load test 3rd party maven dependencies
"""

load("@rules_jvm_external//:defs.bzl", "maven_install")

def twirl_test_repositories():
    maven_install(
        name = "twirl_test",
        artifacts = [
            "com.typesafe.play:twirl-api_2.13:1.6.1",
            "org.specs2:specs2-common_2.13:4.20.2",
            "org.specs2:specs2-core_2.13:4.20.2",
            "org.specs2:specs2-matcher_2.13:4.20.2",
        ],
        repositories = [
            "https://repo.maven.apache.org/maven2",
            "https://maven-central.storage-download.googleapis.com/maven2",
            "https://mirror.bazel.build/repo1.maven.org/maven2",
        ],
        fetch_sources = True,
        maven_install_json = "@io_bazel_rules_twirl//:twirl_test_install.json",
    )
