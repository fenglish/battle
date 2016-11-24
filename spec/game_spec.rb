require 'game'

describe Game do

  subject(:game) { described_class.new( player1, player2 ) }
  let(:player1) { double :player1 }
  let(:player2) { double :player2 }

  it "should start with two players" do
    expect(Game).to respond_to(:new).with(2).arguments
  end

  it { is_expected.to respond_to :attack }

  it "should start with Player 1's turn" do
      expect(game.current_player).to eq player1
  end

  it { is_expected.to respond_to :switch_turn }

  it "should switch to Player 2's turn after Player 1 has taken their turn" do
    allow(player2).to receive(:set_damage)
    game.attack
    game.switch_turn
    expect(game.current_player).to eq player2
  end

  it { is_expected.to respond_to (:lost?) }

  it "should know when a player has lost" do
    allow(player2).to receive(:hp).and_return(0)
    expect(game.lost?).to eq true
  end

end
