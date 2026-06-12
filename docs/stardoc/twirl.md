<!-- Generated with Stardoc: http://skydoc.bazel.build -->

Twirl Template rules

Bazel rules for running the [Twirl Template Compiler](https://github.com/playframework/twirl) on Twirl Template Files

<a id="twirl_templates"></a>

## twirl_templates

<pre>
load("@rules_twirl//twirl:twirl.bzl", "twirl_templates")

twirl_templates(<a href="#twirl_templates-name">name</a>, <a href="#twirl_templates-srcs">srcs</a>, <a href="#twirl_templates-additional_imports">additional_imports</a>, <a href="#twirl_templates-include_play_imports">include_play_imports</a>, <a href="#twirl_templates-scala_version">scala_version</a>,
                <a href="#twirl_templates-source_directory">source_directory</a>, <a href="#twirl_templates-template_formats">template_formats</a>)
</pre>

Compiles Twirl templates to Scala sources files.

**ATTRIBUTES**


| Name  | Description | Type | Mandatory | Default |
| :------------- | :------------- | :------------- | :------------- | :------------- |
| <a id="twirl_templates-name"></a>name |  A unique name for this target.   | <a href="https://bazel.build/concepts/labels#target-names">Name</a> | required |  |
| <a id="twirl_templates-srcs"></a>srcs |  The actual template files contained in the source_directory.   | <a href="https://bazel.build/concepts/labels">List of labels</a> | required |  |
| <a id="twirl_templates-additional_imports"></a>additional_imports |  Additional imports to import to the Twirl templates.   | List of strings | optional |  `[]`  |
| <a id="twirl_templates-include_play_imports"></a>include_play_imports |  If true, include the imports the Play project includes by default.   | Boolean | optional |  `False`  |
| <a id="twirl_templates-scala_version"></a>scala_version |  The Scala version to use for this target, e.g., '3', '2.13'.   | String | optional |  `""`  |
| <a id="twirl_templates-source_directory"></a>source_directory |  Directories where Twirl template files are located.   | <a href="https://bazel.build/concepts/labels">Label</a> | required |  |
| <a id="twirl_templates-template_formats"></a>template_formats |  Formatter types for file extensions.<br><br>The default formats are <pre><code>"html" -&gt; "play.twirl.api.HtmlFormat",&#10;"txt" -&gt; "play.twirl.api.TxtFormat",&#10;"xml" -&gt; "play.twirl.api.XmlFormat",&#10;"js" -&gt; "play.twirl.api.JavaScriptFormat"</code></pre>   | <a href="https://bazel.build/rules/lib/dict">Dictionary: String -> String</a> | optional |  `{}`  |


