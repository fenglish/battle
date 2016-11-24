require_relative 'player'

class Game

  attr_reader :player1, :player2

  MINIMUM_ATTACK = 10
  def initialize( player1, player2 )
    @player1 = player1
    @player2 = player2
  end

  def attack(player)
    @hp = player.hp
    @hp -= MINIMUM_ATTACK
  end

end
