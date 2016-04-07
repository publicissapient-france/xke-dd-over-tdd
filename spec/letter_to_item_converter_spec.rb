require_relative '../lib/letter_to_item_converter'

describe 'Letter to item converter' do
  {
    'A' => 'Medal',
    'B' => 'Boots of Speed',
    'C' => 'Headgear Armor Item'
  }.each_pair do |letter, item|
    it "Gives #{item} to #{letter}" do
      expect(LetterToItemConverter.convert(letter)).to eq item
    end
  end
end
