package rulestwirl.test

import play.twirl.api.{Format, Txt}
import scala.collection.immutable


// class Txt private (elements: immutable.Seq[Txt], text: String) extends BufferedContent[Txt](elements, text) {
//   def this(text: String) = this(Nil, Formats.safe(text))
//   def this(elements: immutable.Seq[Txt]) = this(elements, "")
//   def contentType = MimeTypes.TEXT
// }

// object Txt {
//   def apply(text: String): Txt = {
//     new Txt(text)
//   }
// }

object StrangeTxtFormat extends Format[Txt] {
  def raw(text: String) = Txt(s"strange${text}strange")

  def escape(text: String) = Txt(text)

  val empty: Txt = new Txt("")

  def fill(elements: immutable.Seq[Txt]): Txt = new Txt(elements)
}
