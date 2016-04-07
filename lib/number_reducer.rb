
module NumberReducer
  def self.reduce(number_in)
    return number_in if number_in.to_s.length === 1
    number_in.to_s.split('').inject { | sum, x | sum.to_i + x.to_i }
  end
end
