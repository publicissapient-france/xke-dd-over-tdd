require_relative '../lib/dungeon.rb'

describe 'Dungeon' do
  context 'It gives an object based on name' do
    {
      'Akuku' => 'Medal',
      'Sofia' => 'Boots of Speed',
      'Zelda' => 'Broch'
    }.each_pair do | name, object |
      it "#{name} gets #{object}" do
        expect(Dungeon.object_for(name)).to eq(object)
      end
    end
  end
end
