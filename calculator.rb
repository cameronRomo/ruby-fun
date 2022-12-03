# add, subtract, multiply, divide (2 numbers)
# Read
# Evaluate
# Print
# Loop

# while true do
#   print "> "
#   p eval gets.chomp
#   # all user input is either malicious or worng
#   puts
# end

# Imput format:
# <comand> <arg1> <arg2>
# add x y

def calculator
  loop do
    print '> '
    input = gets.chomp.split ' '
    # p input
    command = input[0].downcase
    #parallel assignment
    arg1, arg2 = input[1, 2].map! { |n| n.to_f }
    # p command, arg1, arg2
    case command
    when 'quit', 'exit'
      break
    when 'add', 'sum', 'plus', '+'
      puts arg1 + arg2
    when 'subtract', 'difference'
      puts arg1 - arg2
    when 'multiply', 'product', '*', 'times'
      puts arg1 * arg2
    when 'divide', '/'
      puts arg1 / arg2
    else
      "I don't understand that."
    end
  end
  puts "goodbye"
end

calculator