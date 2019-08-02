# Twirl Template Rules for Bazel

| Travis | Doc
| --- | --- |
| [![Build Status](https://api.travis-ci.org/lucidsoftware/rules_twirl.svg?branch=master)](https://travis-ci.org/lucidsoftware/rules_twirl/branches) | [Stardoc](docs/stardoc/twirl.md) |

## Overview
`rules_twirl` compiles [Twirl](https://github.com/playframework/twirl) templates to [Scala](http://www.scala-lang.org/), so they can be used with [`bazelbuild/rules_scala`](https://github.com/bazelbuild/rules_scala) and [`higherkindness/rules_scala`](https://github.com/higherkindness/rules_scala).

Simple Core API: [twirl_templates](docs/stardoc/twirl.md)

For more information about Twirl templates, see [the Play Twirl documentation](https://www.playframework.com/documentation/latest/ScalaTemplates#the-template-engine).

## Installation
Create a file called at the top of your repository named `WORKSPACE` and add the following snippet to it.

```python
# update version as needed
rules_twirl_version = "f0d0cc6951796e0f530ed1470f1b93930e6cb3b1"
http_archive(
  name = "io_bazel_rules_twirl",
  sha256 = "d52b3db5486f94bad5e0638136b23860b5a7105a35adc60094e1ad60c06c38dc",
  strip_prefix = "rules_twirl-{}".format(rules_twirl_version),
  type = "zip",
  url = "https://github.com/lucidsoftware/rules_twirl/archive/{}.zip".format(rules_twirl_version),
)

RULES_JVM_EXTERNAL_TAG = "2.5"
http_archive(
    name = "rules_jvm_external",
    sha256 = "249e8129914be6d987ca57754516be35a14ea866c616041ff0cd32ea94d2f3a1",
    strip_prefix = "rules_jvm_external-{}".format(RULES_JVM_EXTERNAL_TAG),
    type = "zip",
    url = "https://github.com/bazelbuild/rules_jvm_external/archive/{}.zip".format(RULES_JVM_EXTERNAL_TAG),
)

load("@io_bazel_rules_twirl//:workspace.bzl", "twirl_repositories")
twirl_repositories()
load("@twirl//:defs.bzl", twirl_pinned_maven_install = "pinned_maven_install")
twirl_pinned_maven_install()
```

This installs `rules_twirl` to your `WORKSPACE` at the specified commit. Update the commit as needed.

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
  deps = [...]
  )
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
