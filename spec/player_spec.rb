require 'player'

describe Player do
  subject(:player1){ described_class.new( name1 )}
  subject(:player2){ described_class.new( name2 )}
  let(:name1){double :name }
  let(:name2){double :name }

  it "should return player name" do
    expect(player1.name).to eq(name1)
  end

end
