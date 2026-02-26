# This approach of incoming transition, store original values, outgoing
# transition, reset to original values is inspired by what the rules_go
# folks are doing.
load(
    "@rules_scala_annex//rules:register_toolchain.bzl",
    "original_scala_version_setting",
    "scala_version_setting",
)

def _twirl_toolchain_transition_impl(settings, attr):
    """Update the scala_version to the overridden value.

    Store the original value, so it can be reset on the outgoing transition.
    """
    if attr.scala_version == "" or attr.scala_version == settings[scala_version_setting]:
        # Do nothing when the attribute value is what the setting currently is
        # otherwise needlessly change build settings by modifying the setting
        # we store the original value in
        return {}

    new_settings = {}
    new_settings[scala_version_setting] = attr.scala_version

    # Store the original scala_version value, so we can reset it
    new_settings[original_scala_version_setting] = settings[scala_version_setting]

    return new_settings

twirl_toolchain_transition = transition(
    implementation = _twirl_toolchain_transition_impl,
    inputs = [
        scala_version_setting,
        original_scala_version_setting,
    ],
    outputs = [
        scala_version_setting,
        original_scala_version_setting,
    ],
)

def _reset_twirl_toolchain_transition_impl(settings, attr):
    """Sets the scala_version to the value it had before the last twirl_toolchain_transition."""

    if settings[original_scala_version_setting] != "":
        new_settings = {}
        new_settings[scala_version_setting] = settings[original_scala_version_setting]
        new_settings[original_scala_version_setting] = ""
        return new_settings
    else:
        return {}

reset_twirl_toolchain_transition = transition(
    implementation = _reset_twirl_toolchain_transition_impl,
    inputs = [
        scala_version_setting,
        original_scala_version_setting,
    ],
    outputs = [
        scala_version_setting,
        original_scala_version_setting,
    ],
)
