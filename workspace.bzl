"""
Load 3rd party maven dependencies
"""

load("@rules_jvm_external//:defs.bzl", "maven_install")
load("@rules_jvm_external//:specs.bzl", "maven")

scala_3_version = "3.5.1"
scala_2_13_version = "2.13.14"

twirl_version = "2.0.7"
zinc_version = "1.10.1"
protobuf_version = "3.19.4"
scopt_version = "4.1.0"

def twirl_compiler_cli_3_repositories():
    maven_install(
        name = "twirl_compiler_cli_3",
        artifacts = [
            "com.github.scopt:scopt_3:{}".format(scopt_version),
            "com.google.protobuf:protobuf-java:{}".format(protobuf_version),
            "org.playframework.twirl:twirl-compiler_3:{}".format(twirl_version),
            "org.scala-lang:scala3-compiler_3:{}".format(scala_3_version),
            "org.scala-lang:scala3-library_3:{}".format(scala_3_version),
            # Set neverlink = True to avoid Scala 2 library being pulled on to the compiler classpath
            maven.artifact("org.scala-lang", "scala3-sbt-bridge", scala_3_version, neverlink = True),
            "org.scala-sbt:compiler-interface:{}".format(zinc_version),
            "org.scala-sbt:zinc_2.13:{}".format(zinc_version),
            "org.scala-sbt:util-interface:{}".format(zinc_version),
        ],
        repositories = [
            "https://repo.maven.apache.org/maven2",
        ],
        fetch_sources = True,
        fail_if_repin_required = True,
        maven_install_json = "@rules_twirl//:twirl_compiler_cli_3_install.json",
    )

def twirl_compiler_cli_2_13_repositories():
    maven_install(
        name = "twirl_compiler_cli_2_13",
        artifacts = [
            "com.github.scopt:scopt_2.13:{}".format(scopt_version),
            "com.google.protobuf:protobuf-java:{}".format(protobuf_version),
            "org.playframework.twirl:twirl-compiler_2.13:{}".format(twirl_version),
            "org.scala-lang:scala-compiler:{}".format(scala_2_13_version),
            "org.scala-lang:scala-library:{}".format(scala_2_13_version),
            "org.scala-lang:scala-reflect:{}".format(scala_2_13_version),
            # Set neverlink = True to avoid Scala 2 library being pulled on to the wrong compiler classpath
            maven.artifact("org.scala-sbt", "compiler-bridge_2.13", zinc_version, neverlink = True),
            "org.scala-sbt:compiler-interface:{}".format(zinc_version),
            "org.scala-sbt:zinc_2.13:{}".format(zinc_version),
            "org.scala-sbt:util-interface:{}".format(zinc_version),
        ],
        repositories = [
            "https://repo.maven.apache.org/maven2",
        ],
        fetch_sources = True,
        fail_if_repin_required = True,
        maven_install_json = "@rules_twirl//:twirl_compiler_cli_2_13_install.json",
    )
