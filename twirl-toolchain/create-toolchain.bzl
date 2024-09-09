load(":twirl-toolchain.bzl", "twirl_toolchain")

def create_twirl_toolchain(name, twirl_compiler):
    twirl_toolchain_name = "{}-toolchain".format(name)
    config_setting_name = "{}-toolchain-setting".format(name)

    twirl_toolchain(
        name = twirl_toolchain_name,
        twirl_compiler = twirl_compiler,
    )

    native.config_setting(
        name = config_setting_name,
        flag_values = {
            "@rules_twirl_toolchain//:twirl-toolchain": name,
        },
    )

    native.toolchain(
        name = name,
        toolchain = twirl_toolchain_name,
        toolchain_type = ":toolchain_type",
        target_settings = [config_setting_name],
    )
