require "./players.rb"
require "./game.rb"

player1 = Player.new("Player 1")
player2 = Player.new("Player 2")
null_player = Player.new("filler dude")

players = [null_player, player1, player2]

rounds = []

current_player_index = 1

puts "Welcome to the funnest math game ever where you'll be adding, subtracting, and multiplying!"
while players[current_player_index].lives > 0

  puts "Your turn, #{players[current_player_index].name}!"
  rounds.push(Game.new())
  rounds.last.new_question

  if rounds.last.result
    puts "Correct! Good job."
  else
    puts "Sorry that's incorrect... You lose a life!"
    players[current_player_index].lose_life
  end

  if players[current_player_index].lives == 0
    puts "Game Over! #{players[current_player_index * -1].name} is the winner!"
    puts
  else
    puts "Lives left: #{players[current_player_index].name} with #{players[current_player_index].lives} | #{players[current_player_index * -1].name} with #{players[current_player_index * -1].lives}"
    current_player_index = current_player_index * -1
    puts
  end
end