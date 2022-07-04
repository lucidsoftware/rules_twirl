"""Twirl Template rules

Bazel rules for running the [Twirl Template Compiler](https://github.com/playframework/twirl) on Twirl Template Files
"""

gendir_base_path = "main/twirl"

play_imports = [
  "play.twirl.api._",
  "play.twirl.api.TwirlFeatureImports._",
  "play.twirl.api.TwirlHelperImports._",
  "models._",
  "controllers._",
  "play.api.i18n._",
  "views.html._",
  "play.api.templates.PlayMagic._",
  "play.api.mvc._",
  "play.api.data._",
]

def _format_map_arg(format):
  return "{}={}".format(*format)

def _format_map_args(formats):
  return [_format_map_arg(format) for format in formats]

def _impl(ctx):
  imports = play_imports + ctx.attr.additional_imports if ctx.attr.include_play_imports else ctx.attr.additional_imports

  outputs = []
  for src in ctx.files.srcs:
    parts = src.short_path.split(".")
    output = ctx.actions.declare_file("gen/{}/{}".format(ctx.label.name, ".".join(parts[:-2] + [parts[-1], parts[-2]])))

    args = ctx.actions.args()
    if hasattr(args, "add_all"): # Bazel 0.13.0+
      args.add_all(imports, format_each = "--additionalImport=%s")
      args.add_all(ctx.attr.template_formats.items(), format_each = "--templateFormat=%s", map_each = _format_map_arg)
    else:
      args.add(imports, format = "--additionalImport=%s")
      args.add(ctx.attr.template_formats.items(), format = "--templateFormat=%s", map_fn = _format_map_args)
    args.add(output)
    args.add(ctx.file.source_directory.path)
    args.add(src)
    args.set_param_file_format("multiline")
    args.use_param_file("@%s", use_always = True)

    ctx.actions.run(
      inputs = [src],
      outputs = [output],
      arguments = [args],
      mnemonic = "TwirlCompile",
      execution_requirements = {"supports-workers": "1"},
      use_default_shell_env = True,
      progress_message = "Compiling twirl template",
      executable = ctx.executable.twirl_compiler,
    )

    outputs.append(output)

  return [
    DefaultInfo(files = depset(outputs))
  ]

twirl_templates = rule(
  implementation = _impl,
  doc = "Compiles Twirl templates to Scala sources files.",
  attrs = {
    "source_directory": attr.label(
      doc = "Directories where Twirl template files are located.",
      allow_single_file = True,
      mandatory = True
    ),
    "srcs": attr.label_list(
      doc = "The actual template files contained in the source_directory.",
      allow_files = True,
       mandatory = True
     ),
    "additional_imports": attr.string_list(
      doc = "Additional imports to import to the Twirl templates.",
    ),
    "include_play_imports": attr.bool(
      doc = "If true, include the imports the Play project includes by default.",
      default = False
    ),
    "template_formats": attr.string_dict(
      doc = """
Formatter types for file extensions.

The default formats are
```
"html" -> "play.twirl.api.HtmlFormat",
"txt" -> "play.twirl.api.TxtFormat",
"xml" -> "play.twirl.api.XmlFormat",
"js" -> "play.twirl.api.JavaScriptFormat"
```
"""
    ),
    "twirl_compiler": attr.label(
      executable = True,
      cfg = "host",
      allow_files = True,
      default = Label("//compiler-cli"),
    )
  },
)
