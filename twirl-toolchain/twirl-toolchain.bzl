def _twirl_toolchain_impl(ctx):
    toolchain_info = platform_common.ToolchainInfo(
        twirl_compiler = ctx.attr.twirl_compiler,
    )
    return [toolchain_info]

twirl_toolchain = rule(
    implementation = _twirl_toolchain_impl,
    attrs = {
        "twirl_compiler": attr.label(
            mandatory = True,
            cfg = "exec",
            executable = True,
            doc = "Tool used to compile Twirl templates",
        ),
    },
    doc = "Defines a toolchain for compiling Twirl templates based on a Twirl compiler",
    provides = [platform_common.ToolchainInfo],
)
