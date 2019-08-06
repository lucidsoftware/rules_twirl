<!-- Generated with Stardoc: http://skydoc.bazel.build -->

<a name="#twirl_templates"></a>

## twirl_templates

<pre>
twirl_templates(<a href="#twirl_templates-name">name</a>, <a href="#twirl_templates-additional_imports">additional_imports</a>, <a href="#twirl_templates-include_play_imports">include_play_imports</a>, <a href="#twirl_templates-source_directory">source_directory</a>, <a href="#twirl_templates-srcs">srcs</a>, <a href="#twirl_templates-template_formats">template_formats</a>, <a href="#twirl_templates-twirl_compiler">twirl_compiler</a>)
</pre>

Compiles Twirl templates to Scala sources files.

### Attributes

<table class="params-table">
  <colgroup>
    <col class="col-param" />
    <col class="col-description" />
  </colgroup>
  <tbody>
    <tr id="twirl_templates-name">
      <td><code>name</code></td>
      <td>
        <a href="https://bazel.build/docs/build-ref.html#name">Name</a>; required
        <p>
          A unique name for this target.
        </p>
      </td>
    </tr>
    <tr id="twirl_templates-additional_imports">
      <td><code>additional_imports</code></td>
      <td>
        List of strings; optional
        <p>
          Additional imports to import to the Twirl templates.
        </p>
      </td>
    </tr>
    <tr id="twirl_templates-include_play_imports">
      <td><code>include_play_imports</code></td>
      <td>
        Boolean; optional
        <p>
          If true, include the imports the Play project includes by default.
        </p>
      </td>
    </tr>
    <tr id="twirl_templates-source_directory">
      <td><code>source_directory</code></td>
      <td>
        <a href="https://bazel.build/docs/build-ref.html#labels">Label</a>; required
        <p>
          Directories where Twirl template files are located.
        </p>
      </td>
    </tr>
    <tr id="twirl_templates-srcs">
      <td><code>srcs</code></td>
      <td>
        <a href="https://bazel.build/docs/build-ref.html#labels">List of labels</a>; required
        <p>
          The actual template files contained in the source_directory.
        </p>
      </td>
    </tr>
    <tr id="twirl_templates-template_formats">
      <td><code>template_formats</code></td>
      <td>
        <a href="https://bazel.build/docs/skylark/lib/dict.html">Dictionary: String -> String</a>; optional
        <p>
          Formatter types for file extensions.

The default formats are
```
"html" -> "play.twirl.api.HtmlFormat",
"txt" -> "play.twirl.api.TxtFormat",
"xml" -> "play.twirl.api.XmlFormat",
"js" -> "play.twirl.api.JavaScriptFormat"
```
        </p>
      </td>
    </tr>
    <tr id="twirl_templates-twirl_compiler">
      <td><code>twirl_compiler</code></td>
      <td>
        <a href="https://bazel.build/docs/build-ref.html#labels">Label</a>; optional
      </td>
    </tr>
  </tbody>
</table>


