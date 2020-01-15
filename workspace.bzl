"""
Load 3rd party maven dependencies
"""

load("@rules_jvm_external//:defs.bzl", "maven_install")

def twirl_repositories():
    maven_install(
        name = "twirl",
        artifacts = [
            "com.github.scopt:scopt_2.12:3.7.0",
            "com.lucidchart:twirl-compiler-cli:0.1",
            "com.typesafe.play:twirl-compiler_2.12:1.2.1",
            "org.scala-lang.modules:scala-parser-combinators_2.12:1.1.0",
            "org.scala-sbt:zinc_2.12:1.2.1",
            "org.scala-sbt:compiler-interface:1.2.1",
            "org.scala-sbt:util-interface:1.2.0",
            "org.scala-lang:scala-compiler:2.12.4",
            "org.scala-lang:scala-library:2.12.4",
            "org.scala-lang:scala-reflect:2.12.4",
        ],
        repositories = [
            "https://repo.maven.apache.org/maven2",
        ],
        fetch_sources = True,
        maven_install_json = "@io_bazel_rules_twirl//:twirl_install.json",
    )
