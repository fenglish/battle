class Player

  attr_reader :name, :hp

  DEFAULT_HP = 60
  MINIMUM_ATTACK = 10

  def initialize(name)
    @name = name
    @hp = DEFAULT_HP
  end

  def set_damage
    @hp -= MINIMUM_ATTACK
  end

end
