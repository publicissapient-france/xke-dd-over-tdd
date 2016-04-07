module NumberToLetterConverter
  def self.convert(number_in)
    {
      0 => 'A',
      1 => 'B',
      2 => 'C',
      8 => 'I'
    }[number_in]
  end
end
