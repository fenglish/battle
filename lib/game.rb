require_relative 'player'

class Game

  attr_reader :player1, :player2, :current_player, :opposing_player


  def initialize( player1, player2 )
    @player1 = player1
    @player2 = player2
    @current_player = @player1
    @opposing_player = @player2
  end

  def attack
    @opposing_player.set_damage
  end

  def switch_turn
    if @current_player == @player1
      @current_player = @player2
      @opposing_player = @player1
    else
      @current_player = @player1
      @opposing_player = @player2
    end
  end

end
