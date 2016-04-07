require_relative('../lib/number_reducer.rb')

describe 'Number reducer' do
  it 'Reduces 0 to 0' do
    expect(NumberReducer.reduce(0)).to eq 0
  end

  it 'Reduces 10 to 1' do
    expect(NumberReducer.reduce(10)).to eq 1
  end

  it 'Reduces 11 to 2' do
    expect(NumberReducer.reduce(11)).to eq 2
  end
end
