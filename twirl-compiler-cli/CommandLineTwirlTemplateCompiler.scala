package rulestwirl.twirl

import higherkindness.rules_scala.common.error.AnnexWorkerError
import higherkindness.rules_scala.common.interrupt.InterruptUtil
import higherkindness.rules_scala.common.sandbox.SandboxUtil
import higherkindness.rules_scala.common.worker.{WorkerMain, WorkTask}
import play.twirl.compiler.TwirlCompiler
import java.io.{File, PrintStream}
import java.nio.file.{Files, Path, Paths}
import scala.jdk.CollectionConverters._
import scopt.OptionParser

//
object CommandLineTwirlTemplateCompiler extends WorkerMain[Unit] {

  case class Config(
    var additionalImports: List[String] = List.empty[String],
    var source: Path = Paths.get("."),
    var sourceDirectory: Path = Paths.get("."),
    var templateFormats: Map[String, String] = Map.empty[String, String],
    var output: Path = Paths.get("."),
  )

  def parser(workDir: Path, out: PrintStream) = new OptionParser[Config]("twirl-compiler") {
    head("Command Line Twirl Template Compiler", "0.2")

    override def displayToOut(msg: String): Unit = out.println(msg)
    override def displayToErr(msg: String): Unit = out.println(msg)
    override def reportError(msg: String): Unit = displayToErr("Error: " + msg)
    override def reportWarning(msg: String): Unit = displayToErr("Warning: " + msg)

    // Do not exit as it causes problems for Bazel workers
    override def terminate(exitState: Either[String, Unit]): Unit = ()

    arg[Path]("<output>").required().action { (value, config) =>
      config.output = SandboxUtil.getSandboxPath(workDir, value)
      config
    }.text("output file")

    arg[Path]("<sourceDirectory>").required().action { (value, config) =>
      config.sourceDirectory = SandboxUtil.getSandboxPath(workDir, value)
      config
    }.text("root source directory")

    arg[Path]("<source>").unbounded().required().action { (value, config) =>
      config.source = SandboxUtil.getSandboxPath(workDir, value)
      config
    }.text("source file")

    opt[String]('i', "additionalImport").valueName("<import>").unbounded().action { (value, config) =>
      config.additionalImports = config.additionalImports ++ List(value)
      config
    }.text("additional imports to add to the compiled templates")

    opt[(String, String)]('t', "templateFormat").unbounded().action({ case ((key, value), config) =>
      config.templateFormats = config.templateFormats + (key -> value)
      config
    }).keyValueName("format", "formatterType").text("additional template formats to use when compiling templates")
  }

  def compileTwirl(config: Config, isCancelled: Function0[Boolean]): Unit = {
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
    InterruptUtil.throwIfInterrupted(isCancelled)

    // TwirlCompiler.compileVirtual generates a footer comment that contains non-reproducible metatdata; remove it
    val sansMetadata = result.content.split("\n").span(s => !s.contains("-- GENERATED --"))._1.dropRight(1).mkString("\n")
    Files.write(config.output, sansMetadata.getBytes)
  }

  override def init(args: Option[Array[String]]): Unit = ()

  protected def work(task: WorkTask[Unit]): Unit = {
    val finalArgs = task.args.toList.flatMap {
      case arg if arg.startsWith("@") => Files.readAllLines(Paths.get(arg.tail)).asScala
      case arg => Array(arg)
    }
    InterruptUtil.throwIfInterrupted(task.isCancelled)

    parser(task.workDir, task.output).parse(finalArgs, Config()).map { config =>
      InterruptUtil.throwIfInterrupted(task.isCancelled)
      compileTwirl(config, task.isCancelled)
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