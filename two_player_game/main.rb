require 'pry'
require './game'
require './player'
require './Question'


print "Enter Player 1 name: "
name1 = gets.chomp.to_s
print "Enter Player 2 name: "
name2 = gets.chomp.to_s
player1 = Player.new(name1)
player2 = Player.new(name2)

# set current player
game = Game.new(player1, player2)

while game.players[0].life > 0 and game.players[1].life > 0 do
  # generate question and answer
  puts "--- NEW TURN ---"
  question = Question.new
  print "#{game.current_player.name}: #{question.gen_question}"
  answer = question.answer

  # user answer
  input = gets.chomp.to_i

  # check answer
  if (input != answer)
    puts "#{game.current_player.name}: Seriously? No!"
    game.subtract_life
  end

  game.report_life

  # change turn
  game.change_player
end