"""
Load 3rd party maven dependencies
"""

load("@rules_jvm_external//:defs.bzl", "maven_install")

def twirl_repositories():
    maven_install(
        name = "twirl",
        artifacts = [
            "com.lucidchart:twirl-compiler-cli:0.1",
        ],
        repositories = [
            "https://repo.maven.apache.org/maven2",
            "https://maven-central.storage-download.googleapis.com/maven2",
            "https://mirror.bazel.build/repo1.maven.org/maven2",
        ],
        fetch_sources = True,
        maven_install_json = "@io_bazel_rules_twirl//:twirl_install.json",
    )
