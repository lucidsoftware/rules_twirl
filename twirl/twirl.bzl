"""Twirl Template rules

Bazel rules for running the [Twirl Template Compiler](https://github.com/playframework/twirl) on Twirl Template Files
"""

gendir_base_path = "main/twirl"

play_imports = [
  "models._",
  "controllers._",
  "play.api.i18n._",
  "views.html._",
  "play.api.templates.PlayMagic._",
  "play.api.mvc._",
  "play.api.data._",
]

def _sanitize_string_for_usage(s):
  res_array = []
  for c in s:
    if c.isalnum() or c == ".":
      res_array.append(c)
    else:
      res_array.append("_")
  return "".join(res_array)

def _format_import_args(imports):
  return ["--additionalImport={}".format(i) for i in imports]

def _format_template_format_args(template_formats):
  return ["--templateFormat:{}={}".format(format, formatter_type) for format, formatter_type in template_formats.items()]

def _impl(ctx):
  gendir_path = gendir_base_path + "/" + _sanitize_string_for_usage(ctx.attr.name)
  gendir = ctx.actions.declare_directory(gendir_path)
  args = [gendir.path] + ["{},{}".format(f.path, ctx.file.source_directory.path) for f in ctx.files.srcs]

  if ctx.attr.include_play_imports:
    args = args + _format_import_args(play_imports)

  args = args + _format_import_args(ctx.attr.additional_imports)

  args = args + _format_template_format_args(ctx.attr.template_formats)

  template_outputs = _outputs(ctx, gendir_path)

  ctx.actions.run(
    inputs = ctx.files.srcs,
    outputs = [gendir] + template_outputs,
    arguments = args,
    progress_message = "Compiling twirl templates",
    executable = ctx.executable._twirl_compiler,
  )

  ctx.actions.run(
    inputs = template_outputs,
    outputs = [ctx.outputs.srcjar],
    arguments = ["cfM"] + [ctx.outputs.srcjar.path] + [f.path for f in template_outputs],
    progress_message = "Bundling compiled twirl templates into srcjar",
    executable = "jar",
  )


def _outputs(ctx, gendir_path):
  template_files = []

  for input_file in ctx.files.srcs:
    source_directory = ctx.file.source_directory.path
    source_directory_end = input_file.dirname.find(source_directory)

    template_path = input_file.dirname[source_directory_end + len(source_directory):]
    template_path = template_path.split("/views")

    left_dot = input_file.basename.find(".")
    template_name = input_file.basename[:left_dot]
    template_path = gendir_path + template_path[0] + "/" + "views/" + input_file.extension + "/" + template_path[1] + "/" + template_name + ".template.scala"

    template_files.append(ctx.actions.declare_file(template_path))

  return template_files


twirl_templates = rule(
  implementation = _impl,
  attrs = {
    "source_directory": attr.label(allow_single_file = True, mandatory = True),
    "srcs": attr.label_list(allow_files = True, mandatory = True),
    "additional_imports": attr.string_list(),
    "include_play_imports": attr.bool(default = False),
    "template_formats": attr.string_dict(),
    "_twirl_compiler": attr.label(
      executable = True,
      cfg = "host",
      allow_files = True,
      default = Label("//twirl-compiler"),
    )
  },
  outputs = {
    "srcjar": "twirl_%{name}.srcjar",
  }
)
"""Compiles Twirl templates to Scala sources files.

Args:
  source_directory: Directories where Twirl template files will be found.
  srcs: The actual template files contained in the source_directories.
  additional_imports: Additional imports to import to the Twirl templates.
  include_play_imports: If true, include the imports the Play project includes by default.
  template_formats: Formatter types for file extensions.

    The default formats are
    ```
    "html" -> "play.twirl.api.HtmlFormat",
    "txt" -> "play.twirl.api.TxtFormat",
    "xml" -> "play.twirl.api.XmlFormat",
    "js" -> "play.twirl.api.JavaScriptFormat"
    ```
"""
