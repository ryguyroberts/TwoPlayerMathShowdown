require './question'
require './game_state'

game = GameState.new

## Start game
puts "Welcome to MATH SHOWDOWN!"

## Loop logic
loop do
  current_player = game.current_player

  ## create new question
  question = Question.new

  ## Prompt current player and get answer
  puts "#{current_player}: #{question.question_string}"
  user_answer = gets.chomp

  ## Answer verification
  if question.correct_answer?(user_answer)
    puts "NAILED IT, that's correct"
  else
    puts "That ain't right!"
    game.lose_life(current_player)
  end

  ## check if game is over
  if game.game_over
    puts game.get_winner
    puts "----- GAME OVER -----"
    break
  end
  ## Switch player & output current score
  puts game.get_score
  game.switch_player
  puts "----- NEW TURN -----"
  puts # just for a new line

end

