require_relative '../lib/char_to_number_converter'

describe 'Char to number' do
  {
    'A' => 0,
    'B' => 1,
    'C' => 2,
    'K' => 0,
    'U' => 0
  }.each_pair do |char, number|
    it "#{char} gives #{number}" do
      expect(CharacterToNumberConverter.convert(char)).to be(number)
    end
  end
end
