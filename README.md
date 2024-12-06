# Twirl Template Rules for Bazel

| Status | Stardoc
| --- | --- |
| [![Build Status](https://github.com/lucidsoftware/rules_twirl/workflows/CI/badge.svg)](https://github.com/lucidsoftware/rules_twirl/actions) | [Stardoc](docs/stardoc/twirl.md) |

## Overview
`rules_twirl` compiles [Twirl](https://github.com/playframework/twirl) templates to [Scala](http://www.scala-lang.org/), so they can be used with [`bazelbuild/rules_scala`](https://github.com/bazelbuild/rules_scala) and [`higherkindness/rules_scala`](https://github.com/higherkindness/rules_scala).

Simple Core API: [twirl_templates](docs/stardoc/twirl.md)

For more information about Twirl templates, see [the Play Twirl documentation](https://www.playframework.com/documentation/latest/ScalaTemplates#the-template-engine).

## Installation
Create a file called at the top of your repository named `WORKSPACE` and add the following snippet to it.

```python
# update version as needed
rules_twirl_version = "TODO"
http_archive(
    name = "rules_twirl",
    sha256 = "TODO",
    strip_prefix = "rules_twirl-{}".format(rules_twirl_version),
    type = "zip",
    url = "https://github.com/lucidsoftware/rules_twirl/archive/{}.zip".format(rules_twirl_version),
)

# rules_jvm_external
rules_jvm_external_version = "6.2"

http_archive(
    name = "rules_jvm_external",
    sha256 = "aa39ecd47e16d5870eba817fe71476802bc371fe2724a2ddee565992df55f4af",
    strip_prefix = "rules_jvm_external-{}".format(rules_jvm_external_version),
    type = "zip",
    url = "https://github.com/bazelbuild/rules_jvm_external/archive/{}.zip".format(rules_jvm_external_version),
)

load("@rules_jvm_external//:repositories.bzl", "rules_jvm_external_deps")
rules_jvm_external_deps()

load("@rules_jvm_external//:setup.bzl", "rules_jvm_external_setup")
rules_jvm_external_setup()

load(
    "@rules_twirl//:workspace.bzl",
    "twirl_compiler_cli_2_13_repositories",
    "twirl_compiler_cli_3_repositories",
)
twirl_compiler_cli_3_repositories()
load("@twirl_compiler_cli_3//:defs.bzl", twirl_compiler_cli_3_pinned_maven_install = "pinned_maven_install")
twirl_compiler_cli_3_pinned_maven_install()

twirl_compiler_cli_2_13_repositories()
load("@twirl_compiler_cli_2_13//:defs.bzl", twirl_compiler_cli_2_13_pinned_maven_install = "pinned_maven_install")
twirl_compiler_cli_2_13_pinned_maven_install()

# Twirl compiler
load("@rules_twirl//twirl-toolchain:register-toolchains.bzl", "twirl_register_toolchains")
twirl_register_toolchains(default_toolchain_name = "twirl-3")
```

This installs `rules_twirl` to your `WORKSPACE` and sets up toolchains for a Scala 2.13 and Scala 3 version of the Twirl compiler with Scala 3 being the default. To change the default to Scala 2.13, set `default_toolchain_name = "twirl-2-13"`

If you want to use a custom Twirl compiler, you can set up a custom toolchain in a BUILD.bazel file as follows:
```python
load("@rules_twirl//twirl-toolchain:create-toolchain.bzl", "create_twirl_toolchain")

create_twirl_toolchain(
    name = "twirl-custom",
    twirl_compiler = "<label of your custom Twirl templates compiler>",
)
```

Then change the `twirl_register_toolchains` in the `WORKSPACE` file to use your custom toolchain:
```python
twirl_register_toolchains(
    default_toolchain_name = "twirl-custom",
    toolchains = ["<label of your custom Twirl templates compiler>"]
)
```

You can find the available versions of the Twirl Compiler CLI on maven: https://mvnrepository.com/artifact/com.lucidchart/twirl-compiler-cli.

## Usage
The `twirl_templates` rule compiles Twirl templates to a source jar that can be used with the `rules_scala` rules. For example,

```python
twirl_templates(
    name = "twirl-templates",
    source_directory = "app",
    srcs = glob(["app/**/*.scala.html"])
        + glob(["app/**/*.scala.xml"])
        + glob(["app/**/*.scala.js"])
        + glob(["app/**/*.scala.txt"]),
)

scala_binary(
    name = "foo-service",
    srcs = glob(["app/**/*.scala"]) + [":twirl-templates"],
    main_class = "foo.server.RunServer",
    deps = [...],
)
```

### Overriding the default Twirl compiler
To override the default Twirl compiler for a single target, you can change the `twirl_toolchain_name` attribute on the `twirl_routes` target. That attribute can be set to the name of any `twirl_toolchain` registered with `twirl_register_toolchains` (and created using `create_twirl_toolchain`). By default `twirl-3` and `twirl-2-13` are valid values.

For example:
```python
twirl_templates(
    name = "twirl-templates",
    source_directory = "app",
    srcs = glob(["app/**/*.scala.html"])
        + glob(["app/**/*.scala.xml"])
        + glob(["app/**/*.scala.js"])
        + glob(["app/**/*.scala.txt"]),
    twirl_toolchain_name = "twirl-2-13",
)
```

See the [Stardoc documentation](docs/stardoc/twirl.md) for the full list of options for `twirl_templates`.

### Use with the Play Framework
`twirl_templates` can be used with the [`rules_play_routes`](https://github.com/lucidsoftware/rules_play_routes) to run a Play Framework Service. For example

```python
twirl_templates(
    name = "twirl-templates",
    source_directory = "app",
    include_play_imports = True,
    srcs = glob(["app/**/*.scala.html"])
        + glob(["app/**/*.scala.xml"])
        + glob(["app/**/*.scala.js"])
        + glob(["app/**/*.scala.txt"]),
    additional_imports = [...],
)

play_routes(
    name = "play-routes",
    srcs = ["conf/routes"] + glob(["conf/*.routes"]),
    include_play_imports = True,
    generate_reverse_router = True,
    routes_imports = [...],
)

scala_binary(
    name = "foo-service",
    srcs = glob(["app/**/*.scala"])  + [":twirl-templates", ":play-routes"],
    visibility = ["//visibility:public"],
    main_class = "play.core.server.ProdServerStart",
    resources = ["conf/logback.xml"] + glob(["conf/resources/**/*"]),
    resource_strip_prefix = native.package_name(),
    classpath_resources = ["conf/application.conf"],
    jvm_flags = [
    	  "-Dhttp.port=9000",
    	  "-Dapplication.name=foo-service",
    ],
    deps = [...],
)
```

## Development
### Command Line Twirl Compiler
This project consists of the Twirl Bazel rules and a command line Twirl compiler. The command line compiler can be built with
```bash
bazel build //twirl-compiler
```

It can be run with
```bash
bazel run //twirl-compiler
```

### Testing
All tests can be run using

```bash
test/run_all_tests.sh
```

They can also be run using
```bash
bazel test //test/...
```

### Updating Third Party Dependencies
We use [rules_jvm_external](https://github.com/bazelbuild/rules_jvm_external) to import third party dependencies.

To make changes to the dependencies, simply update `maven_install` in the appropriate `workspace.bzl` file (`workspace.bzl` for the main `rules_twirl` implementation or `test_workspace.bzl` for the tests), and then update the dependencies json file used by `rules_jvm_external` by running the following script:
```bash
scripts/gen-deps.sh
```
Never modify the dependencies json file directly.

### Updating Stardoc
Before pushing your changes, make sure you update the documentation by running the following script:
```bash
scripts/gen-docs.sh
```
Failure to do so will result in CI failing.

## Releasing
To release a new version to Maven Central:
 1. Push a tag with this syntax: `P1.P2.P3` where `P1.P2.P3` is the Twirl version, e.g., `2.0.7`
 2. Once the build completes (including the publish step), find the [staging repo in Sonatype](https://oss.sonatype.org/#stagingRepositories) (assuming you're signed in and have access to the project)
 3. Verify all the artifacts are on the staging Repository, and then close it through the Sonatype GUI
 4. Once Sonatype's pre-release checks on the repository complete, release it through the Sonatype GUI
 5. Verify the artifact's present in [Maven Central](https://search.maven.org/search?q=com.lucidchart) (it can take multiple hours for everything to sync)
