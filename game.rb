class Player
  attr_accessor :name, 

  def initialize(name)
    @name = name
  end

end


a = Player.new('Josh')
b = Player.new('Chris')


class Game(player1, player2)
  
  def initialize
    @player1 = player1
    @player2 = player2
    @p1_lives = 3
    @p2_lives = 3
    @turn
  end

end

game1 = Game.new(a.name, b.name)