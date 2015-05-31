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

describe "The Dungeon" do
  xit "gives an object based on a name" do
    expect(objectTo("Gideon")).to be("Orb")
  end
  context "convert letters to numbers" do
    {
      "A" => 0,
      "B" => 1,
      "C" => 2,
      "D" => 3,
      "E" => 4,
      "F" => 0,
      "G" => 1,
      "K" => 0,
      "P" => 0,
      "U" => 0,
      "Z" => 0
    }.each_pair do |letter, number|
      it "converts #{letter} to #{number}" do
        expect(convert(letter)).to be(number)
      end
    end
  end

  context "numbers to numbers" do
    {
      "0" => 5,
      "1" => 6,
      "5" => 5,
      "6" => 6
    }.each_pair do |number, toNumber|
      it "converts #{number} to #{toNumber}" do
        expect(convert(number)).to be(toNumber)
      end
    end
  end
end
