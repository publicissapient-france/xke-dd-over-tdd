class Dungeon
  LETTERS = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
  def convert(symbol_in)

    numberFromLetter = LETTERS.index(symbol_in)
    if numberFromLetter == nil
      return 7 if "!?-&".index(symbol_in) != nil
      numberOfLetter = symbol_in.to_i
      return numberOfLetter + 5 if numberOfLetter < 4
      return numberOfLetter
    end
    return numberFromLetter - 25 if numberFromLetter > 24
    return numberFromLetter - 20 if numberFromLetter > 19
    return numberFromLetter - 15 if numberFromLetter > 14
    return numberFromLetter - 10 if numberFromLetter > 9
    return numberFromLetter - 5 if numberFromLetter > 4
    numberFromLetter
  end

  def readd(number_in)
    sum = 0
    numbers = number_in.to_s.split("")
    numbers.each { |n| sum += n.to_i }
    return sum
  end

  def convertNumber(number_in)
    return LETTERS[number_in]
  end
end
