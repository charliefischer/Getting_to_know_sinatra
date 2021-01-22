require 'player'

describe Player do
  subject(:oscar) { Player.new('Oscar') }
  subject(:glykeria) { Player.new('Glykeria')}

  describe '#name' do
    it 'returns the name' do
      expect(oscar.name).to eq 'Oscar'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(oscar.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#attack' do
   it 'damages the player' do
    expect(oscar).to receive(:receive_damage)
    glykeria.attack(oscar)
   end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { oscar.receive_damage }.to change { oscar.hit_points }.by(-10)
    end
  end

end
