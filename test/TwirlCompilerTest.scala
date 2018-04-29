package rulestwirl.test

import org.specs2.mutable.Specification

class TwirlCompilerTest extends Specification {

  "Twirl Template Compiler when run through Bazel" should {
    "Compile html Twirl Templates" in {
      import twirl.com.foo.views.html.hello
      val name = "Fred"
      val age = 37
      val template = hello.render(name, age)
      template.body mustEqual s"<html>$name, age: $age</html>"
    }

    "Compile txt Twirl Templates" in {
      import twirl.com.foo.views.txt.hello
      val name = "Emily"
      val age = 31
      val template = hello.render(name, age)
      template.body mustEqual s"$name, age: $age"
    }

    "Compile xml Twirl Templates" in {
      import twirl.com.foo.views.xml.hello
      val name = "Martha"
      val age = 49
      val template = hello.render(name, age)
      template.body mustEqual s"<person><name>$name</name>, <age>$age</age></person>"
    }

    "Compile js Twirl Templates" in {
      import twirl.com.foo.views.js.hello
      val name = "Bob"
      val age = 64
      val template = hello.render(name, age)
      template.body mustEqual s"""{"name": "$name", "age": "$age"}"""
    }

    "Add additional imports" in {
      import twirl.com.foo.views.txt.addImports
      val person = Person("Jim", 24)
      val template = addImports.render(person)
      template.body mustEqual s"${person.name}, age: ${person.age}"
    }

    "Set template formatters" in {
      import twirl.com.foo.views.txt.customFormatter
      val name = "Jan"
      val template = customFormatter.render(name)
      template.body mustEqual s"strangename: strange$name"
    }
  }
}