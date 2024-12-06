# This approach of incoming transition, store original values, outgoing
# transition, reset to original values is inspired by what the rules_go
# folks are doing.
toolchain_setting_key = "//twirl-toolchain"
original_toolchain_setting_key = "//twirl-toolchain:original-twirl-toolchain"

def _twirl_toolchain_transition_impl(settings, attr):
    """Update the rules_twirl toolchain to the overridden value. Store
    The original value, so it can be reset on the outgoing transition.
    """
    if attr.twirl_toolchain_name == "" or attr.twirl_toolchain_name == settings[toolchain_setting_key]:
        # Do nothing when the attribute value is what the setting currently is
        # otherwise needlessly change build settings by modifying the setting
        # we store the original value in
        return {}

    new_settings = {}
    new_settings[toolchain_setting_key] = attr.twirl_toolchain_name

    # Store the original toolchain value, so we can reset it
    new_settings[original_toolchain_setting_key] = json.encode(settings[toolchain_setting_key])

    return new_settings

twirl_toolchain_transition = transition(
    implementation = _twirl_toolchain_transition_impl,
    inputs = [
        toolchain_setting_key,
        original_toolchain_setting_key,
    ],
    outputs = [
        toolchain_setting_key,
        original_toolchain_setting_key,
    ],
)

def _reset_twirl_toolchain_transition_impl(settings, attr):
    """Sets the rules_twirl toolchain to the values it had before the
    last twirl_toolchain_transition.
    """

    if settings[original_toolchain_setting_key] != "":
        new_settings = {}
        new_settings[toolchain_setting_key] = json.decode(settings[original_toolchain_setting_key])
        new_settings[original_toolchain_setting_key] = ""
        return new_settings
    else:
        return {}

reset_twirl_toolchain_transition = transition(
    implementation = _reset_twirl_toolchain_transition_impl,
    inputs = [
        toolchain_setting_key,
        original_toolchain_setting_key,
    ],
    outputs = [
        toolchain_setting_key,
        original_toolchain_setting_key,
    ],
)
