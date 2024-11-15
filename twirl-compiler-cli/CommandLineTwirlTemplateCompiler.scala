package rulestwirl.twirl

import higherkindness.rules_scala.common.error.AnnexWorkerError
import higherkindness.rules_scala.common.interrupt.InterruptUtil
import higherkindness.rules_scala.common.sandbox.SandboxUtil
import higherkindness.rules_scala.common.worker.WorkerMain
import play.twirl.compiler.TwirlCompiler
import java.io.{File, PrintStream}
import java.nio.file.{Files, Path, Paths}
import scala.jdk.CollectionConverters._
import scopt.OParser

object CommandLineTwirlTemplateCompiler extends WorkerMain[Unit] {

  case class Config(
    var additionalImports: List[String] = List.empty[String],
    var source: Path = Paths.get("."),
    var sourceDirectory: Path = Paths.get("."),
    var templateFormats: Map[String, String] = Map.empty[String, String],
    var output: Path = Paths.get("."),
  )

  val builder = OParser.builder[Config]
  def parser(workDir: Path) = {
    import builder._
    OParser.sequence(
      programName("twirl-compiler"),
      head("Twirl Template Compiler", "0.2"),
      arg[Path]("<output>").required().action { (value, config) =>
        config.output = SandboxUtil.getSandboxPath(workDir, value)
        config
      }.text("output file"),

      arg[Path]("<sourceDirectory>").required().action { (value, config) =>
        config.sourceDirectory = SandboxUtil.getSandboxPath(workDir, value)
        config
      }.text("root source directory"),

      arg[Path]("<source>").unbounded().required().action { (value, config) =>
        config.source = SandboxUtil.getSandboxPath(workDir, value)
        config
      }.text("source file"),

      opt[String]('i', "additionalImport").valueName("<import>").unbounded().action { (value, config) =>
        config.additionalImports = config.additionalImports ++ List(value)
        config
      }.text("additional imports to add to the compiled templates"),

      opt[(String, String)]('t', "templateFormat").unbounded().action({ case ((key, value), config) =>
        config.templateFormats = config.templateFormats + (key -> value)
        config
      }).keyValueName("format", "formatterType").text("additional template formats to use when compiling templates"),
    )
  }

  def compileTwirl(config: Config): Unit = {
    val templateFormats = defaultFormats ++ config.templateFormats

    val extension = config.source.getFileName().toString().split('.').last
    val formatterType = templateFormats(extension)
    val result = TwirlCompiler.compileVirtual(
      content = new String(Files.readAllBytes(config.source)),
      source = config.source.toFile(),
      sourceDirectory = config.sourceDirectory.toFile(),
      formatterType = formatterType,
      additionalImports = config.additionalImports.map(_.replace("%format%", extension)),
      inclusiveDot = false,
      resultType = s"${formatterType}.Appendable"
    )
    InterruptUtil.throwIfInterrupted()

    // TwirlCompiler.compileVirtual generates a footer comment that contains non-reproducible metatdata; remove it
    val sansMetadata = result.content.split("\n").span(s => !s.contains("-- GENERATED --"))._1.dropRight(1).mkString("\n")
    Files.write(config.output, sansMetadata.getBytes)
  }

  override def init(args: Option[Array[String]]): Unit = ()

  protected def work(ctx: Unit, args: Array[String], out: PrintStream, workDir: Path, verbosity: Int): Unit = {
    val finalArgs = args.toList.flatMap {
      case arg if arg.startsWith("@") => Files.readAllLines(Paths.get(arg.tail)).asScala
      case arg => Array(arg)
    }
    InterruptUtil.throwIfInterrupted()

    OParser.parse(parser(workDir), finalArgs, Config()).map { config =>
      InterruptUtil.throwIfInterrupted()
      compileTwirl(config)
    }.getOrElse {
      throw new AnnexWorkerError(3)
    }
  }

  def defaultFormats = Map(
    "html" -> "play.twirl.api.HtmlFormat",
    "txt" -> "play.twirl.api.TxtFormat",
    "xml" -> "play.twirl.api.XmlFormat",
    "js" -> "play.twirl.api.JavaScriptFormat"
  )
}