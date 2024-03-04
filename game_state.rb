class GameState
  PLAYER1 = "Player 1"
  PLAYER2 = "Player 2"

  ## Access Controls
  attr_reader :current_player
  attr_accessor :game_over

  ## ContrucTOR
  def initialize
    @player1_lives = 3
    @player2_lives = 3
    @game_over = false
    @current_player = PLAYER1
  end

  def get_score
    "P1 #{@player1_lives}/3 P2 #{@player2_lives}/3"
  end

  def lose_life(current_player)
    if current_player == PLAYER1
      @player1_lives -= 1
    elsif current_player == PLAYER2
      @player2_lives -= 1
    else
      puts "Invalid player!"
    end
  end

  def switch_player
    @current_player = (current_player == PLAYER1) ? PLAYER2 : PLAYER1
  end

end