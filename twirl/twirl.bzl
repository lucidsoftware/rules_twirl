gendir_path = "main/twirl"

play_imports = [
  "models._",
  "controllers._",
  "play.api.i18n._",
  "views.html._",
  "play.api.templates.PlayMagic._",
  "play.api.mvc._",
  "play.api.data._",
]

def format_import_args(imports):
  return ["--additionalImport={}".format(i) for i in imports]

def format_template_format_args(template_formats):
  return ["--templateFormat:{}={}".format(format, formatterType) for format, formatterType in template_formats.items()]

def _impl(ctx):
  gendir = ctx.actions.declare_directory(gendir_path)
  args = [gendir.path] + ["{},{}".format(f.path, ctx.file.source_directory.path) for f in ctx.files.srcs]

  if ctx.attr.include_play_imports:
    args = args + format_import_args(play_imports)

  args = args + format_import_args(ctx.attr.additional_imports)

  args = args + format_template_format_args(ctx.attr.template_formats)

  template_outputs = _outputs(ctx, gendir)

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


def _outputs(ctx, gendir):
  template_files = []

  for input_file in ctx.files.srcs:
    source_directory = ctx.file.source_directory.path
    source_directory_end = input_file.dirname.find(source_directory)

    template_path = input_file.dirname[source_directory_end + len(source_directory):]
    template_path = template_path.split("/views")
    #template_path_1 = input_file.dirname[:views_index + len(views)]
    #template_path_2 = input_file.dirname[views_index + len(views):]

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