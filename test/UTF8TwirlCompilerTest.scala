package rulestwirl.test

import org.specs2.mutable.Specification

class UTF8TwirlCompilerTest extends Specification {

  "Twirl Template Compiler when run through Bazel with UTF8 encoding set" should {
    "Compile html Twirl Templates" in {
      import twirl.com.foo.utf8.html.hello
      val name = "Fred"
      val age = 37
      val template = hello.render(name, age)
      template.body mustEqual s"<html>’$name’, age: $age</html>"
    }

    "Compile txt Twirl Templates" in {
      import twirl.com.foo.utf8.txt.hello
      val name = "Oliver"
      val age = 28
      val template = hello.render(name, age)
      template.body mustEqual s"$name, age – $age"
    }
  }
}