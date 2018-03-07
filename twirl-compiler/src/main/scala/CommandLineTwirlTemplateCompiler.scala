package rulestwirl.twirl

import play.twirl.compiler.TwirlCompiler
import java.io.File
import scala.io.Codec

object CommandLineTwirlTemplateCompiler {

  case class Config(
    sources: Seq[(File, File)] = Seq.empty[(File, File)],
    generatedDirectory: File = new File("."),
    additionalImports: Seq[String] = Seq.empty[String],
    templateFormats: Map[String, String] = Map.empty[String, String]
  )

  val parser = new scopt.OptionParser[Config]("scopt") {
    head("Twirl Template Compiler", "0.1")

    arg[File]("<outputDirectory>").required().action { (value, config) =>
      config.copy(generatedDirectory = value)
    }.text("directory to output compiled templates to")

    arg[String]("<source,sourceDirectory>...").unbounded().required().action { (value, config) =>
      config.copy(sources = config.sources ++ {
        value.split(",") match {
          case Array(source, sourceDirectory) => Seq((new File(source), new File(sourceDirectory)))
        }
      })
    }.text("sources to compile")

    opt[String]('i', "additionalImport").valueName("<import>").unbounded().action { (value, config) =>
      config.copy(additionalImports = config.additionalImports ++ Seq(value))
    }.text("additional imports to add to the compiled templates")

    opt[(String, String)]('t', "templateFormat").unbounded().action({ case ((key, value), config) =>
      config.copy(templateFormats = config.templateFormats + (key -> value))
    }).keyValueName("format", "formatterType").text("additional template formats to use when compiling templates")
  }

  def main(args: Array[String]): Unit = {
    val config = parser.parse(args, Config()).getOrElse {
      return System.exit(1)
    }

    val templateFormats = defaultFormats ++ config.templateFormats

    config.sources.foreach { case (source, sourceDirectory) =>
      val extension = source.getName.split('.').last
      TwirlCompiler.compile(
        source = source,
        sourceDirectory = sourceDirectory,
        generatedDirectory = config.generatedDirectory,
        formatterType = templateFormats(extension),
        additionalImports = config.additionalImports.map("import " + _.replace("%format%", extension)).mkString("\n"),
        codec = Codec(scala.util.Properties.sourceEncoding),
        inclusiveDot = false
      )
    }
  }

  def defaultFormats = Map(
    "html" -> "play.twirl.api.HtmlFormat",
    "txt" -> "play.twirl.api.TxtFormat",
    "xml" -> "play.twirl.api.XmlFormat",
    "js" -> "play.twirl.api.JavaScriptFormat"
  )
}