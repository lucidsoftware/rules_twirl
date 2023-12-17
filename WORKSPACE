workspace(name = "io_bazel_rules_twirl")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

# rules_jvm_external
RULES_JVM_EXTERNAL_TAG = "5.3"

http_archive(
    name = "rules_jvm_external",
    sha256 = "6cc8444b20307113a62b676846c29ff018402fd4c7097fcd6d0a0fd5f2e86429",
    strip_prefix = "rules_jvm_external-{}".format(RULES_JVM_EXTERNAL_TAG),
    type = "zip",
    url = "https://github.com/bazelbuild/rules_jvm_external/archive/{}.zip".format(RULES_JVM_EXTERNAL_TAG),
)

load(":workspace.bzl", "twirl_repositories")

twirl_repositories()

load("@twirl//:defs.bzl", twirl_pinned_maven_install = "pinned_maven_install")

twirl_pinned_maven_install()

load(":test_workspace.bzl", "twirl_test_repositories")

twirl_test_repositories()

load("@twirl_test//:defs.bzl", twirl_test_pinned_maven_install = "pinned_maven_install")

twirl_test_pinned_maven_install()

# Skylib
skylib_version = "1.4.2"  # update this as needed

http_archive(
    name = "bazel_skylib",
    sha256 = "0fa67483ecf6a7c62b892b6f0d68aa4135586478077f0f97c4fbf39201648cf4",
    strip_prefix = "bazel-skylib-{}".format(skylib_version),
    type = "zip",
    url = "https://github.com/bazelbuild/bazel-skylib/archive/{}.zip".format(skylib_version),
)

load("@bazel_skylib//:workspace.bzl", "bazel_skylib_workspace")

bazel_skylib_workspace()

# rules_nodejs
# To use the JavaScript version of Sass, we need to first install nodejs
rules_nodejs_version = "5.3.0"

http_archive(
    name = "build_bazel_rules_nodejs",
    sha256 = "322b2ecebd564586f5ccdd645833d7a2ecae2db554886e4435c3d02bdf2ecdf4",
    strip_prefix = "rules_nodejs-{}".format(rules_nodejs_version),
    type = "zip",
    url = "https://github.com/bazelbuild/rules_nodejs/archive/{}.zip".format(rules_nodejs_version),
)

load("@build_bazel_rules_nodejs//:repositories.bzl", "build_bazel_rules_nodejs_dependencies")

build_bazel_rules_nodejs_dependencies()

load("@build_bazel_rules_nodejs//:index.bzl", "node_repositories")

node_repositories()

# rules_sass
rules_sass_version = "1.67.0"  # update this as needed

http_archive(
    name = "io_bazel_rules_sass",
    sha256 = "b29eb037568be386f7d4976fd160fefac98e0e26e3056e55f0d3eba2a0afb874",
    strip_prefix = "rules_sass-{}".format(rules_sass_version),
    type = "zip",
    url = "https://github.com/bazelbuild/rules_sass/archive/{}.zip".format(rules_sass_version),
)

load("@io_bazel_rules_sass//:defs.bzl", "sass_repositories")

sass_repositories()

rules_pkg_version = "0.9.1"

http_archive(
    name = "rules_pkg",
    sha256 = "8f9ee2dc10c1ae514ee599a8b42ed99fa262b757058f65ad3c384289ff70c4b8",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/rules_pkg/releases/download/{0}/rules_pkg-{0}.tar.gz".format(rules_pkg_version),
        "https://github.com/bazelbuild/rules_pkg/releases/download/{0}/rules_pkg-{0}.tar.gz".format(rules_pkg_version),
    ],
)

load("@rules_pkg//:deps.bzl", "rules_pkg_dependencies")

rules_pkg_dependencies()

# Skydoc
skydoc_version = "0.3.0"  # update this as needed

http_archive(
    name = "io_bazel_skydoc",
    sha256 = "8762a212cff5f81505a1632630edcfe9adce381479a50a03c968bd2fc217972d",
    strip_prefix = "skydoc-{}".format(skydoc_version),
    type = "zip",
    url = "https://github.com/bazelbuild/skydoc/archive/{}.zip".format(skydoc_version),
)

load("@io_bazel_skydoc//skylark:skylark.bzl", "skydoc_repositories")

skydoc_repositories()

# buildifier
buildtools_version = "4.2.2"

http_archive(
    name = "com_github_bazelbuild_buildtools",
    sha256 = "ae34c344514e08c23e90da0e2d6cb700fcd28e80c02e23e4d5715dddcb42f7b3",
    strip_prefix = "buildtools-{}".format(buildtools_version),
    url = "https://github.com/bazelbuild/buildtools/archive/refs/tags/{}.tar.gz".format(buildtools_version),
)

# buildifier is written in Go and hence needs rules_go to be built.
# See https://github.com/bazelbuild/rules_go for the up to date setup instructions.
http_archive(
    name = "io_bazel_rules_go",
    sha256 = "6dc2da7ab4cf5d7bfc7c949776b1b7c733f05e56edc4bcd9022bb249d2e2a996",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/rules_go/releases/download/v0.39.1/rules_go-v0.39.1.zip",
        "https://github.com/bazelbuild/rules_go/releases/download/v0.39.1/rules_go-v0.39.1.zip",
    ],
)

load("@io_bazel_rules_go//go:deps.bzl", "go_rules_dependencies")

go_rules_dependencies()

load("@io_bazel_rules_go//go:deps.bzl", "go_register_toolchains")

go_register_toolchains(version = "1.20.3")

# Also for buildifier. Comes from
# https://github.com/bazelbuild/buildtools/blob/master/buildifier/README.md
protobuf_version = "3.19.4"

http_archive(
    name = "com_google_protobuf",
    sha256 = "3bd7828aa5af4b13b99c191e8b1e884ebfa9ad371b0ce264605d347f135d2568",
    strip_prefix = "protobuf-{}".format(protobuf_version),
    url = "https://github.com/protocolbuffers/protobuf/archive/v{}.tar.gz".format(protobuf_version),
)

load("@com_google_protobuf//:protobuf_deps.bzl", "protobuf_deps")

protobuf_deps()

# higherkindness/rules_scala (used for tests only)
# TODO: Move tests into their own worskpace s.t. we don't need their dependenices here
rules_scala_annex_version = "938ffdc24fb25a58220aa650948761073f1dd83b"

http_archive(
    name = "rules_scala_annex",
    sha256 = "ae0cfd560a5238248d5f4c9fcde352e5dfc87cba5efd0b97e4c88ea839fd51b5",
    strip_prefix = "rules_scala-{}".format(rules_scala_annex_version),
    type = "zip",
    url = "https://github.com/lucidsoftware/rules_scala/archive/{}.zip".format(rules_scala_annex_version),
)

bind(
    name = "default_scala",
    actual = "@rules_scala_annex//src/main/scala:zinc_2_13_11",
)

load("@rules_scala_annex//rules/scala:workspace.bzl", "scala_register_toolchains", "scala_repositories")

scala_repositories()

load("@annex//:defs.bzl", annex_pinned_maven_install = "pinned_maven_install")

annex_pinned_maven_install()

http_archive(
    name = "io_bazel_rules_scala",
    sha256 = "7adaec1cc787ca1519550e71dbd0cb9c149ee1b06f04ba91dda07c12483aae57",
    strip_prefix = "rules_scala-6.3.0",
    url = "https://github.com/bazelbuild/rules_scala/releases/download/v6.3.0/rules_scala-v6.3.0.tar.gz",
)

load("@io_bazel_rules_scala//:scala_config.bzl", "scala_config")

scala_config(scala_version = "2.13.12")

load("@io_bazel_rules_scala//scala:scala.bzl", "scala_repositories")

scala_repositories()

register_toolchains("//toolchain/scala")
