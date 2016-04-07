require_relative './char_to_number_converter'
require_relative './number_reducer'
require_relative './number_to_letter_converter'
require_relative './letter_to_item_converter'

module Dungeon
  def self.object_for(name_in)
    total = name_in.each_char.inject(0) {
        |total, character|
          total + CharacterToNumberConverter.convert(character.upcase)
      }
    return LetterToItemConverter.convert(NumberToLetterConverter.convert(NumberReducer.reduce(total)))
  end
end
