class Question

  ## Construct it!
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @answer = @num1 + @num2
  end

  def question_string
    "What does #{@num1} plus #{@num2} equal?"
  end

  def correct_answer?(user_answer)
    user_answer.to_i == @answer
  end

end