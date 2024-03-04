require 'pp'
require './question'

## Start game
## 

q1 = Question.new

pp q1.question_string

pp q1.correct_answer?(gets.chomp)

