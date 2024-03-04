class GameState
  PLAYER1 = "Player 1"
  PLAYER2 = "Player 2"

  ## Access Controls
  attr_reader :current_player
  attr_reader :game_over
  attr_reader :winner
  

  ## ContrucTOR
  def initialize
    @player1_lives = 3
    @player2_lives = 3
    @game_over = false
    @current_player = PLAYER1
    @winner = ""
  end

  def get_score
    "P1 #{@player1_lives}/3 P2 #{@player2_lives}/3"
  end

  # Takes life away and sets winner if someone reaches zero and game over
  def lose_life(current_player)
    if current_player == PLAYER1
      @player1_lives -= 1
      @game_over = true if @player1_lives == 0
      @winner = PLAYER2
    elsif current_player == PLAYER2
      @player2_lives -= 1
      @game_over = true if @player2_lives == 0
      @winner = PLAYER1
    else
      puts "Invalid player!"
    end
  end

  def switch_player
    @current_player = (current_player == PLAYER1) ? PLAYER2 : PLAYER1
  end

  # Winner string
  def get_winner
    if @winner == PLAYER1
      "Player 1 wins with a score of #{@player1_lives}/3"
    elsif @winner == PLAYER2
      "Player 2 wins with a score of #{@player2_lives}/3"
    else
      puts "No winner"
    end 
  end 

end