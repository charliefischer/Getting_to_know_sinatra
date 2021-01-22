require 'game'

describe Game do
  subject(:game) { described_class.new(oscar, glykeria)}
  subject(:oscar) { double :player }
  subject(:glykeria) { double :player }

  describe '#player_1' do
    it 'retrieves the first player' do
      expect(game.player_1).to eq oscar
    end
  end

  describe '#player_2' do
    it 'retrieves the second player' do
      expect(game.player_2).to eq glykeria
    end
  end


    describe '#attack' do
      it 'damages the player' do
      expect(oscar).to receive(:receive_damage)
      game.attack(oscar)
    end
  end


end
