# Twirl Template Rules for Bazel

| Status | Stardoc
| --- | --- |
| [![Build Status](https://github.com/lucidsoftware/rules_twirl/workflows/CI/badge.svg)](https://github.com/lucidsoftware/rules_twirl/actions) | [Stardoc](docs/stardoc/twirl.md) |

## Overview

`rules_twirl` compiles [Twirl](https://github.com/playframework/twirl) templates to
[Scala](http://www.scala-lang.org/), so they can be used with
[`bazelbuild/rules_scala`](https://github.com/bazelbuild/rules_scala) and
[`lucidsoftware/rules_scala`](https://github.com/lucidsoftware/rules_scala).

Simple Core API: [twirl_templates](docs/stardoc/twirl.md)

For more information about Twirl templates, see
[the Play Twirl documentation](https://www.playframework.com/documentation/latest/ScalaTemplates#the-template-engine).

## Installation

`rules_twirl` isn't yet on the [Bazel Central Registry](https://registry.bazel.build/), so you'll
need to pull it in via `archive_override`. Be sure to replace `<COMMIT>` with  latest commit on
`master` and `<INTEGRITY>` with the hash suggested by Bazel after the dependency is first loaded.

*/MODULE.bazel*

```starlark
bazel_dep(name = "rules_twirl")

rules_twirl_version = "<COMMIT>"

archive_override(
    module_name = "rules_twirl",
    integrity = "<INTEGRITY>",
    strip_prefix = "rules_twirl-{}".format(rules_twirl_version),
    urls = ["https://github.com/lucidsoftware/rules_twirl/archive/refs/heads/{}.zip".format(rules_twirl_version)],
)
```

The Twirl toolchain is selected automatically based on the `scala_version` attribute on
`twirl_templates` targets (see [Selecting the Scala version](#selecting-the-scala-version) below).
When `scala_version` is unset, the default Scala version for the project is used:
`scala.defaults(scala_version = …)` from the `rules_scala_annex` module extension, which this repo
sets to Scala 3.

If you want to use a custom Twirl compiler, you can set up a custom toolchain like so:

*/BUILD.bazel*

```starlark
load("@rules_twirl//twirl-toolchain:create-toolchain.bzl", "create_twirl_toolchain")

create_twirl_toolchain(
    name = "twirl-custom",
    scala_version = "3",
    twirl_compiler = "<label of your custom Twirl templates compiler>",
)
```

If you register more than one custom toolchain for the same `scala_version`, set the `prefix`
attribute to disambiguate them, e.g., `prefix = "custom"` on the Twirl toolchain and
`scala_version = "custom_3"` on the `twirl_templates` target.

Then, register your toolchain with Bazel:

*/MODULE.bazel*

```starlark
register_toolchains("//:twirl-custom")
```

You can find the available versions of the Twirl Compiler CLI on maven:
https://mvnrepository.com/artifact/com.lucidchart/twirl-compiler-cli.

## Usage

The `twirl_templates` rule compiles Twirl templates to a source jar that can be used with the
`rules_scala` rules. For example,

```starlark
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

To select which Twirl compiler to use, set the `scala_version` attribute on the `twirl_templates`
target. By default, `"3"` and `"2.13"` are valid values.

For example:

```starlark
twirl_templates(
    name = "twirl-templates",
    source_directory = "app",
    srcs = glob(["app/**/*.scala.html"])
        + glob(["app/**/*.scala.xml"])
        + glob(["app/**/*.scala.js"])
        + glob(["app/**/*.scala.txt"]),
    scala_version = "2.13",
)
```

See the [Stardoc documentation](docs/stardoc/twirl.md) for the full list of options for
`twirl_templates`.

### Use with the Play Framework

`twirl_templates` can be used with the
[`rules_play_routes`](https://github.com/lucidsoftware/rules_play_routes) to run a Play Framework
service. For example

```starlark
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

This project consists of the Twirl Bazel rules and a command line Twirl compiler. The
command line compiler can be built with

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

We use [rules_jvm_external](https://github.com/bazelbuild/rules_jvm_external) to import
third party dependencies.

To make changes to the dependencies, simply update the appropriate `maven.install` call in
`MODULE.bazel`, and then update the dependencies json file used by `rules_jvm_external` by running
the following script:

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
 2. Once the build completes (including the publish step), find the
    [staging repo in Sonatype](https://oss.sonatype.org/#stagingRepositories) (assuming you're
    signed in and have access to the project)
 3. Verify all the artifacts are on the staging Repository, and then close it through the
    Sonatype GUI
 4. Once Sonatype's pre-release checks on the repository complete, release it through the
    Sonatype GUI
 5. Verify the artifact's present in
    [Maven Central](https://search.maven.org/search?q=com.lucidchart) (it can take multiple hours
    for everything to sync)
