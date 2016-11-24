require 'player'

describe Player do
  subject(:player1){ described_class.new( name1 )}
  subject(:player2){ described_class.new( name2 )}
  let(:name1){double :name }
  let(:name2){double :name }

  it "should return player name" do
    expect(player1.name).to eq(name1)
  end

  it { is_expected.to respond_to :be_attacked }

  it "should be able to attack player2" do
    player2.be_attacked
    expect(player2.hp).to eq 50
  end

end
