require '../lib/dungeon.rb'

describe "The Dungeon" do

  before do
    @dungeon = Dungeon.new
  end

  context "gives an object based on a name" do
    {
      "Gideon" => "Orb",
      "Akuku" => "Medal",
      "Thor" => "Ring of Protection"
    }.each_pair do |name, object|
      it "gives #{object} to #{name}" do
        expect(@dungeon.objectTo(name)).to eq(object)
      end
    end
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
        expect(@dungeon.convert(letter)).to be(number)
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
        expect(@dungeon.convert(number)).to be(toNumber)
      end
    end
  end

  context "special symbols to numbers" do
    {
      "!" => 7,
      "?" => 7,
      "-" => 7,
      "&" => 7
    }.each_pair do |symbol, number|
      it "converts #{symbol} to #{number}" do
        expect(@dungeon.convert(symbol)).to be(number)
      end
    end
  end

  context "readds numbers" do
    it "readding 18 (1+8) becomes 9" do
      expect(@dungeon.readd(18)).to be(9)
    end
    it "readding 22 (2+2) becomes 4" do
      expect(@dungeon.readd(22)).to be(4)
    end
  end

  context "convert numbers to letters" do
    {
      0 => "A",
      1 => "B",
      9 => "J"
    }.each_pair do |number, letter|
      it "converts #{number} to #{letter}" do
        expect(@dungeon.toLetter(number)).to eq(letter)
      end
    end
  end

  context "object for a letter" do
    {
      "A" => "Medal",
      "B" => "Boots of Speed",
      "C" => "Headgear Armor Item"
    }.each_pair do |letter, object|
      it "gives a #{object} for #{letter}" do
        expect(@dungeon.objectFor(letter)).to eq(object)
      end
    end

  end
end
