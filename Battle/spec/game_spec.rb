require 'game'

describe Game do
  subject(:oscar) { double('Oscar') }
  subject(:glykeria) { double('Glykeria') }

    describe '#attack' do
      it 'damages the player' do
      expect(oscar).to receive(:receive_damage)
      Game.new.attack(oscar)
    end
 end

end