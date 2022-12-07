class Game
  WIN_SCENS = [
    [:rock, :scissors],
    [:paper, :rock],
    [:scissors, :paper]
  ]

  def initialize
    @p1 = Player.new
    @p2 = ComputerPlayer.new
    play
  end  # Moves as [:rock, :scissors]
  
  def pick_winner
    if @p1.move == @p2.move
      puts "It's a tie!"
    elsif WIN_SCENS.include? [@p1.move, @p2.move]
      puts "P1 wins!"
      @p1.win
    else
      puts "P2 wins!"
      @p2.win
    end
  end

  def play_round
    return false unless @p1.get_move
    return false unless @p2.get_move
    print_moves
    pick_winner
    print_scores
    puts
    puts "Let's play again."
    true
  end
  
  def play
    loop do
      break unless play_round
    end
    puts "Goodbye, thanks for playing!!"
  end

  def print_moves
    puts "P1 played #{@p1.move}, P2 played #{@p2.move}."    
  end

  def print_scores
    puts "Scores: "
    puts "P1 : #{@p1.score}"
    puts "P2 : #{@p2.score}"
  end
end