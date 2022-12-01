# puts "You enter a room with 3 doors, which do you go through? \br
# <Enter 1, 2, or 3>..."

# door_number = gets.chomp.downcase.strip

# case door_number
# when "1", "one"
#   puts "There is a tiger and he eats you!"
# when "2", "two"
#   puts "You found a whole bunch of gold!!"
# when "3", "three"
#   puts "You find a mysterious man with rubies for eyes."
# else
#   puts "You were supposed to pick 1, 2, or 3"
# end

# box = 'bananas'
# box = 'apples'


def check_for_banans box
  return false if box != 'bananas'
  puts "my bananas have arived" if box == 'bananas'
end

# check_for_banans box

def max x, y
  x > y ? x : y
end

# puts max 3, 5

def who_wins player_score, computer_score
  puts "You #{player_score > computer_score ? 'win!' : 'loose!'}"
end

# who_wins 11, 12

# Rock Paper Sissors:

moves = ['rock', 'paper', 'scissors']

# get player move
puts "Pick your move \n>"
p_move = gets.chomp
puts "You played #{p_move}"

# get computer move
c_move = moves.sample
puts "Computer played #{c_move}"

if p_move == c_move
  puts "it's a tie" 
elsif p_move == 'rock'
  puts "you win!" if c_move == 'scissors'
  puts "computer wins!" if c_move == 'paper'
elsif p_move == 'paper'
  puts "you win!" if c_move == 'rock'
  puts "computer wins!" if c_move == 'scissors'
elsif p_move == 'scissors'
  puts "you win!" if c_move == 'paper'
  puts "computer wins!" if c_move == 'rock'
else
  puts "Unexpected output"
end

