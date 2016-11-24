require 'game'

describe Game do

  subject(:game) { described_class.new }
  let(:player) { double :player }

  it { is_expected.to respond_to :attack }

  it "should be able to attack player2" do
    allow(player).to receive(:hp).and_return(60)
    expect(game.attack(player)).to eq 50
  end

end
