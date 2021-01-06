"""
Load 3rd party maven dependencies
"""

load("@rules_jvm_external//:defs.bzl", "maven_install")

def twirl_repositories():
    maven_install(
        name = "twirl",
        artifacts = [
            "com.github.scopt:scopt_2.13:3.7.1",
            "com.typesafe.play:twirl-compiler_2.13:1.4.2",
            "org.scala-lang.modules:scala-parser-combinators_2.13:1.1.2",
            "org.scala-sbt:zinc_2.12:1.4.4",
            "org.scala-sbt:compiler-interface:1.4.4",
            "org.scala-sbt:util-interface:1.4.4",
            "org.scala-lang:scala-compiler:2.13.3",
            "org.scala-lang:scala-library:2.13.3",
            "org.scala-lang:scala-reflect:2.13.3",
            "org.scala-sbt:compiler-bridge_2.13:1.3.4",
        ],
        repositories = [
            "http://central.maven.org/maven2",
        ],
        fetch_sources = True,
    )
