"""
Load test 3rd party maven dependencies
"""

load("@rules_jvm_external//:defs.bzl", "maven_install")

def twirl_test_repositories():
    maven_install(
        name = "twirl_test",
        artifacts = [
            "com.typesafe.play:twirl-api_2.13:1.4.2",
            "org.specs2:specs2-common_2.13:4.6.0",
            "org.specs2:specs2-core_2.13:4.6.0",
            "org.specs2:specs2-matcher_2.13:4.6.0",
            "org.scala-lang:scala-library:2.13.3",
            "org.scala-lang:scala-reflect:2.13.3",
        ],
        repositories = [
            "http://central.maven.org/maven2",
        ],
    )
