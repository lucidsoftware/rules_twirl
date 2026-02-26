load("@rules_scala_annex//rules:register_toolchain.bzl", "create_version_config_settings")
load(":twirl-toolchain.bzl", "twirl_toolchain")

def create_twirl_toolchain(name, twirl_compiler, scala_version, jvm_flags = [], prefix = ""):
    """Defines and configures a Twirl toolchain selected by Scala version.

    Args:
        name: Name of the generated `toolchain` target. Register it with `register_toolchains`.
        twirl_compiler: Label of the executable Twirl templates compiler to use.
        scala_version: Scala version this toolchain serves, e.g. "3", "2.13". A `twirl_templates`
            target is matched to this toolchain when its `scala_version` attribute matches
            hierarchically. For example, "3" matches a target requesting "3.3.7".
        jvm_flags: JVM options passed to the Twirl compiler at JVM startup.
        prefix: Optional namespace to disambiguate multiple toolchains that share a
            `scala_version`. A target selects a prefixed toolchain by setting
            `scala_version = "<prefix>_<version>"`.
    """
    toolchain_name = "{}-toolchain".format(name)
    twirl_toolchain(
        name = toolchain_name,
        twirl_compiler = twirl_compiler,
        jvm_flags = jvm_flags,
    )

    scala_version_settings_group_name = create_version_config_settings(name, scala_version, prefix)

    native.toolchain(
        name = name,
        toolchain = toolchain_name,
        toolchain_type = "@rules_twirl//twirl-toolchain:toolchain_type",
        target_settings = [":{}".format(scala_version_settings_group_name)],
    )
