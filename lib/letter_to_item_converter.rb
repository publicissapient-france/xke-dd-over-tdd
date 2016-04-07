module LetterToItemConverter
  def self.convert(letter_in)
    {
      'A' => 'Medal',
      'B' => 'Boots of Speed',
      'C' => 'Headgear Armor Item',
      'I' => 'Broch'
    }[letter_in]
  end
end
