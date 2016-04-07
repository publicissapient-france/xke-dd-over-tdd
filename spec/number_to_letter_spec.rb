require_relative('../lib/number_to_letter_converter.rb')

describe 'Number to letter converter' do
  {
    0 => 'A',
    1 => 'B',
    2 => 'C'
  }.each_pair do |number, letter|
    it "Converts #{number} to #{letter}" do
      expect(NumberToLetterConverter.convert(number)).to eq letter
    end
  end
end
