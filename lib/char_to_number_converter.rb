module CharacterToNumberConverter
  def self.convert(char_in)
    {
      'AFKUZ' => 0,
      'BL' => 1,
      'C' => 2,
      'DIS' => 3,
      'EO' => 4
    }.each_pair do |char, number|
      return number if char.include? char_in.upcase
    end
  end
end
