load("@bazel_skylib//lib:unittest.bzl", "analysistest", "asserts")
load("//twirl:twirl.bzl", "twirl_templates")

# This flag is set on the test-only "twirl-jvm-flags" toolchain in test/BUILD.bazel. The test
# asserts it propagates to the TwirlCompile action's command line as `--jvm_flag=<flag>`. The
# jvm_flags are intentionally kept out of the params file, so they appear inline in argv.
_EXPECTED_JVM_FLAG = "--jvm_flag=-Drules_twirl.test=1"

def _jvm_flags_propagated_test_impl(ctx):
    env = analysistest.begin(ctx)

    twirl_actions = [
        action
        for action in analysistest.target_actions(env)
        if action.mnemonic == "TwirlCompile"
    ]
    asserts.true(
        env,
        len(twirl_actions) > 0,
        "expected at least one TwirlCompile action",
    )
    for action in twirl_actions:
        asserts.true(
            env,
            _EXPECTED_JVM_FLAG in action.argv,
            "expected {} in the TwirlCompile command line, got: {}".format(
                _EXPECTED_JVM_FLAG,
                action.argv,
            ),
        )

    return analysistest.end(env)

jvm_flags_propagated_test = analysistest.make(
    _jvm_flags_propagated_test_impl,
    config_settings = {
        "//command_line_option:extra_toolchains": ["//test:twirl-jvm-flags"],
    },
)

def twirl_jvm_flags_test_suite(name):
    """Verifies that a Twirl toolchain's jvm_flags reach the TwirlCompile action.

    Args:
        name: Name of the generated analysis test target.
    """
    twirl_templates(
        name = "twirl-jvm-flags-templates",
        srcs = ["twirl-templates/twirl/com/foo/views/hello.scala.html"],
        scala_version = "jvmflagtest_3",
        source_directory = "twirl-templates",
        tags = ["manual"],
    )

    jvm_flags_propagated_test(
        name = name,
        target_under_test = ":twirl-jvm-flags-templates",
    )
