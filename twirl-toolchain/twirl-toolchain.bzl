def _twirl_toolchain_impl(ctx):
    toolchain_info = platform_common.ToolchainInfo(
        twirl_compiler = ctx.attr.twirl_compiler,
        jvm_flags = ctx.attr.jvm_flags,
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
        "jvm_flags": attr.string_list(
            doc = "JVM options to pass when invoking the Twirl compiler.",
        ),
    },
    doc = "Defines a toolchain for compiling Twirl templates based on a Twirl compiler",
    provides = [platform_common.ToolchainInfo],
)
