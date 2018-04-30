package rulestwirl.twirl

import annex.worker.SimpleMain
import play.twirl.compiler.TwirlCompiler
import java.io.File
import java.nio.file.{Files, Paths}
import scala.collection.JavaConverters._

object CommandLineTwirlTemplateCompiler extends SimpleMain {

  case class Config(
    additionalImports: Seq[String] = Seq.empty[String],
    source: File = new File("."),
    sourceDirectory: File = new File("."),
    templateFormats: Map[String, String] = Map.empty[String, String],
    output: File = new File("."),
  )

  val parser = new scopt.OptionParser[Config]("scopt") {
    head("Twirl Template Compiler", "0.1")

    arg[File]("<output>").required().action { (value, config) =>
      config.copy(output = value)
    }.text("output file")

    arg[File]("<sourceDirectory>").required().action { (value, config) =>
      config.copy(sourceDirectory = value)
    }.text("root source directory")

    arg[File]("<source>").unbounded().required().action { (value, config) =>
      config.copy(source = value)
    }.text("source file")

    opt[String]('i', "additionalImport").valueName("<import>").unbounded().action { (value, config) =>
      config.copy(additionalImports = config.additionalImports ++ Seq(value))
    }.text("additional imports to add to the compiled templates")

    opt[(String, String)]('t', "templateFormat").unbounded().action({ case ((key, value), config) =>
      config.copy(templateFormats = config.templateFormats + (key -> value))
    }).keyValueName("format", "formatterType").text("additional template formats to use when compiling templates")
  }

  protected[this] def work(args: Array[String]): Unit = {
    val finalArgs = args.flatMap {
      case arg if arg.startsWith("@") => Files.readAllLines(Paths.get(arg.tail)).asScala
      case arg => Array(arg)
    }
    val config = parser.parse(finalArgs, Config()).getOrElse {
      return System.exit(3)
    }

    val templateFormats = defaultFormats ++ config.templateFormats

    val extension = config.source.getName.split('.').last
    val formatterType = templateFormats(extension)
    val result = TwirlCompiler.compileVirtual(
      content = new String(Files.readAllBytes(config.source.toPath)),
      source = config.source,
      sourceDirectory = config.sourceDirectory,
      formatterType = formatterType,
      additionalImports = config.additionalImports.map(_.replace("%format%", extension)),
      inclusiveDot = false,
      resultType = s"${formatterType}.Appendable"
    )
    Files.write(config.output.toPath, result.content.getBytes)
  }

  def defaultFormats = Map(
    "html" -> "play.twirl.api.HtmlFormat",
    "txt" -> "play.twirl.api.TxtFormat",
    "xml" -> "play.twirl.api.XmlFormat",
    "js" -> "play.twirl.api.JavaScriptFormat"
  )
}