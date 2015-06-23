package item

import org.scalatest.FunSuite
import org.scalatest.Matchers
import org.scalatest.prop.TableDrivenPropertyChecks

class ItemGeneratorTest extends FunSuite with Matchers with TableDrivenPropertyChecks {
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

	val nameToItemExamples = Table(
		("Name", "Item"),
		("Akuku", Medal),
		("Zapuk", Medal),
		("Kayin", BootsOfSpeed),
		("Sofia", BootsOfSpeed),
		("Jacob", HeadGearArmorItem),
		("Lynn", HeadGearArmorItem),
		("Thor", RingOfProtection),
		("Jennie", RingOfProtection),
		("Seth", RingOfFireResistance),
		("Emily", RingOfFireResistance),
		("Ralph", RingOfSpellTurning),
		("Jess", RingOfSpellTurning),
		("Dan", GauntletsOfOgrePower),
		("Ann", GauntletsOfOgrePower),
		("Duke", Anklet),
		("Wendy", Anklet),
		("Axel", Brooch),
		("Zelda", Brooch),
		("Aaron", Orb),
		("Rosa", Orb))

	for (nameToItem <- nameToItemExamples) {
		test("Should return " + nameToItem._2 + "When generating first item Given " + nameToItem._1) {
			ItemGenerator.generateFirstItem(nameToItem._1) shouldBe nameToItem._2
		}
	}

}