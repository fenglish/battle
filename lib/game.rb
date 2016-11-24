require_relative 'player'

class Game

  MINIMUM_ATTACK = 10

  def attack(player)
    @hp = player.hp
    @hp -= MINIMUM_ATTACK
  end

end
