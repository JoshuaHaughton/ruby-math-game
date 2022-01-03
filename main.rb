require_relative './player'
require_relative './game'

a = Player.new("Josh")
b = Player.new("Chris")

puts "Player 1: #{a.name}"
puts "Player 2: #{b.name}"

game1 = Game.new(a.name, b.name)
game1.play