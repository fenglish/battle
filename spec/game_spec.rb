require 'game'

describe Game do

  subject(:game) { described_class.new( player1, player2 ) }
  let(:player1) { double :player }
  let(:player2) { double :player }

  it "should start with two players" do
    expect(Game).to respond_to(:new).with(2).arguments
  end

  it { is_expected.to respond_to :attack }

  it "should be able to attack player2" do
    allow(player1).to receive(:hp).and_return(60)
    expect(game.attack(player1)).to eq 50
  end

end
