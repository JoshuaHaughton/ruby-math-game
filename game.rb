class Player
  attr_accessor :name

  def initialize(name)
    @name = name
  end

end

a = Player.new("Josh")
b = Player.new("Chris")

puts a.name
puts b.name


class Game

  # constructor
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @p1_lives = 3
    @p2_lives = 3
    @turn = rand(2)
    @turn == 1 ? @asker = @player2 : @asker = @player1
  end

  # methods

  def play
    puts "It's #{self.whichTurn}'s turn!"
    self.question
    self.changeTurns
  end

  def changeTurns
    if @turn != 1 
      @turn = 1
      @asker = @player2
    else 
      @turn = 2
      @asker = @player1
    end
  end

  def whichTurn
    if @turn == 1
      @player1
    else
      @player2
    end
  end

  def wrongAnswer
    if @turn == 1 
      p1_lives -= 1
    else
      p2_lives -= 1
  end
end


  def question
    num1 = rand(20)
    num2 = rand(20)

    puts "What does #{num1} plus #{num2} equal?"
    answer = gets.chomp

    if num1 + num2 != answer
      puts "#{@asker}: Seriously? No!"
    else
      puts "#{@asker}: YES! You are correct."
    end

  end

end


game1 = Game.new(a.name, b.name)
game1.play