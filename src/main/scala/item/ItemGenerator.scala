package item

object ItemGenerator {

	val items = Array(Medal, BootsOfSpeed, HeadGearArmorItem, RingOfProtection, RingOfFireResistance, RingOfSpellTurning, GauntletsOfOgrePower, Anklet, Brooch, Orb)

	val charCategories = Map(
		0 -> List('A', 'F', 'K', 'P', 'U', 'Z'),
		1 -> List('B', 'G', 'L', 'Q', 'V'),
		2 -> List('C', 'H', 'M', 'R', 'W'),
		3 -> List('D', 'I', 'N', 'S', 'X'),
		4 -> List('E', 'J', 'O', 'T', 'Y'),
		5 -> List('0', '5'),
		6 -> List('1', '6'),
		7 -> List('2', '7', '!', '?', '-', '&'),
		8 -> List('3', '8'),
		9 -> List('4', '9'))

	def generateFirstItem(name: String): Item = {
		val digits = name.toUpperCase().map { charCategory(_).getOrElse(0) }
		items(reduceToOneDigit(digits.sum))
	}

	private def charCategory(char: Char): Option[Int] = {
		val charCategoryOption = charCategories.find { _._2 contains char }
		if (charCategoryOption.isDefined) Some(charCategoryOption.get._1)
		else None
	}

	private def reduceToOneDigit(number: Int): Int = {
		val numberString = number.toString()
		if (numberString.length < 2) number
		else {
			val digitsInNumber = numberString.map { _.toString.toInt }
			reduceToOneDigit(digitsInNumber.sum)
		}
	}
}