def _toolchain_configuration_repository_impl(repository_ctx):
    repository_ctx.file(
        "BUILD.bazel",
        """\
load("@bazel_skylib//rules:common_settings.bzl", "string_setting")

string_setting(
    name = "twirl-toolchain",
    build_setting_default = "{}",
    visibility = ["//visibility:public"],
)

string_setting(
    name = "original-twirl-toolchain",
    build_setting_default = "",
    visibility = ["//visibility:public"],
)
""".format(repository_ctx.attr.default_toolchain_name),
    )

_toolchain_configuration_repository = repository_rule(
    attrs = {
        "default_toolchain_name": attr.string(mandatory = True),
    },
    doc = "Defines build settings used by the Twirl toolchains to use. This is done in a separate repository so we can provide the default dynamically.",
    implementation = _toolchain_configuration_repository_impl,
)

def twirl_register_toolchains(
        default_toolchain_name,
        toolchains = [
            "//twirl-toolchain:twirl-3",
            "//twirl-toolchain:twirl-2-13",
        ]):
    _toolchain_configuration_repository(
        name = "rules_twirl_toolchain",
        default_toolchain_name = default_toolchain_name,
    )

    native.register_toolchains(*toolchains)
