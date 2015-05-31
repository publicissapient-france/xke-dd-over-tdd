class Dungeon
  def convert(letter_in)
    letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    numberFromLetter = letters.index(letter_in)
    if numberFromLetter == nil
      numberOfLetter = letter_in.to_i
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
end
