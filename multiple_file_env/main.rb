puts "Hi, I'm the main file."
p require_relative 'other'
puts "Now we're back in main."
puts
puts "What happens if we require it again?"
p require_relative 'other'