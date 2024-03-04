require 'pp'
require './question'
require './game_state'

game = GameState.new

## Start game
pp "Welcome to MATH SHOWDOWN!"

## Loop logic
loop do
  current_player = game.current_player

  ## create new question
  question = Question.new

  ## Prompt current player and get answer
  pp "#{current_player}: #{question.question_string}"
  user_answer = gets.chomp

  ## Answer verification
  if question.correct_answer?(user_answer)
    pp "NAILED IT, that's correct"
  else
    pp "That ain't right!"
    game.lose_life(current_player)
  end

  ## Switch player & output current score
  game.switch_player
  pp game.get_score
  pp "----- NEW TURN -----"

end




## Loop Logic

# q1 = Question.new

# pp q1.question_string

# pp q1.correct_answer?(gets.chomp)

