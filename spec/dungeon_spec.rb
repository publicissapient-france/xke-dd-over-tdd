def convert(letter_in)
  letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
  number = letters.index(letter_in)
  return number - 25 if number > 24
  return number - 20 if number > 19
  return number - 15 if number > 14
  return number - 10 if number > 9
  return number - 5 if number > 4
  number
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
end
