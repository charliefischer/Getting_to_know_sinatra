require 'game'

describe Game do
  subject(:game) { described_class.new(oscar, glykeria) }
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

  describe '#current_turn' do
    it 'strats as player 1' do
      expect(game.current_turn).to eq oscar
    end
  end

  describe '#switch_turns' do
    it 'switches the turn' do
      game.switch_turns
      expect(game.current_turn).to eq glykeria
    end
  end

end
