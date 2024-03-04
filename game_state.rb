class GameState
  PLAYER1 = "Player 1"
  PLAYER2 = "Player 2"
  LIVES = 3

  ## Access Controls
  attr_reader :current_player, :game_over, :winner

  ## ContrucTOR
  def initialize
    @player_lives = { PLAYER1 => LIVES, PLAYER2 => LIVES }
    @game_over = false
    @current_player = PLAYER1
    @winner = nil
  end

  def get_score
    "P1 #{@player_lives[PLAYER1]}/3 P2 #{@player_lives[PLAYER2]}/3"
  end

  # Takes life away and sets winner if someone reaches zero and game over
  def lose_life(current_player)
    @player_lives[current_player] -= 1
    if @player_lives[current_player].zero?
      @game_over = true
      @winner = (current_player == PLAYER1) ? PLAYER2 : PLAYER1
    end
  end

  def switch_player
    @current_player = (current_player == PLAYER1) ? PLAYER2 : PLAYER1
  end

  # Winner string
  def get_winner
    if @winner
      "#{@winner} wins with a score of #{@player_lives[@winner]}/#{LIVES}"
    else
      "No winner"
    end
  end
end