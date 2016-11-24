require 'player'

describe Player do
  subject(:player1){ described_class.new( name1 )}
  subject(:player2){ described_class.new( name2 )}
  let(:name1){double :name }
  let(:name2){double :name }

  it "should return player name" do
    expect(player1.name).to eq(name1)
  end

  it "should reduce hit points by 10 when player is attacked" do
    player1.set_damage
    expect(player1.hp).to eq Player::DEFAULT_HP - Player::MINIMUM_ATTACK
  end


end
