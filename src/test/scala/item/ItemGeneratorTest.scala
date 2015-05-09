package item

import org.scalatest.FunSuite
import org.scalatest.Matchers

class ItemGeneratorTest extends FunSuite with Matchers {
  test("Should return Medal When generating first item Given a") {
    ItemGenerator.generateFirstItem("a") shouldBe Medal
  }

  test("Should return Boots of speed When generating first item Given b") {
    ItemGenerator.generateFirstItem("b") shouldBe BootsOfSpeed
  }

  test("Should return Medal When generationg first item Given Zapuk") {
    ItemGenerator.generateFirstItem("Zapuk") shouldBe Medal
  }

  test("Should return BootsOfSpeed When generating first item Given Sofia") {
	  ItemGenerator.generateFirstItem("Sofia") shouldBe BootsOfSpeed
  }
  
  test("Should return BootsOfSpeed When generating first item Given !?-&") {
    ItemGenerator.generateFirstItem("!?-&") shouldBe BootsOfSpeed
  }
}