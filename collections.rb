# Arays

top_foods = [
  "Grilled Chese",
  "Pizza",
  "Nachos",
  "Hot Dogs",
  "Pizza rolls"
]

# Add
top_foods[5] = "BBQ"
top_foods.push "French Fries"
top_foods << "Motzerella Sticks" << "Pretzels"

# Remove 
not_as_good = top_foods.pop
top_foods.shift
top_foods.unshift not_as_good

top_foods.delete_at 0
top_foods.delete "Hot Dogs"
top_foods.insert 1, "Corn Dogs"
# p top_foods

# Hashes

prices = {
  "eggs" => 3.0,
  "milk" => 2.0,
  "bacon" => 5.0
}

my_info = {
  "name" => "Cameron",
  "job" => "Dev",
  "likes_it" => true,
  "age" => 28
}

# p prices
# puts "I am #{my_info["age"]} years old"

# Use symbols for keys when it makes sense
contact_card = {
  :name => "Bruce Wayne",
  :email => "definitelynotbatman@batman.com"
}

# Alt syntax (perfered)
contact_card_2 = {
  name: "Alfred Pennyworth",
  email_address: "batmansbatman@batman.com"
}

# p contact_card[:name]
# p contact_card_2[:name]

favorite_foods = {
  sara: "pizza",
  brian: "pizza",
  kimberly: "pizza",
  kevin: "dijon mustard on a biscuit"
}

favorite_foods[:tyra] = "crispy bacon"
favorite_foods.delete :kevin
# p favorite_foods

# Constructor notation
fusball_scores = Hash.new(0)

# p fusball_scores
# p fusball_scores[:sara]
# p fusball_scores[:sara] += 1
# p fusball_scores[:kay] += 1
# p fusball_scores.keys
 
# Lottery Simulator

# Random numbers:
# p rand 10
# If we want someone to always win:
  # just need to choose one of our players
# If we want a number that our players have to match then there might not be a winner

# Raffle style
players = ["Duncan", "Kevin", "Tara", "Bobby", "Jane"]

# winner = players[rand players.length] 
#OR...
winner = players.sample
# puts "And the winner is... #{winner}!"

# players = {
#   3 => "Duncan",
#   5 => "Kevin",
#   8 => "Tara",
#   4 => "Boby",
#   1 => "Jane"
# }

# players.default = "nobody"

# winning_number = rand 10 + 1

# puts "And the winner is... #{players[winning_number]}!!"

winner = players.shuffle!.pop
# p players.include? winner

puts "And the winner is... #{winner}!!"

runner_up = players.shuffle!.pop
puts "And the runner up prize goes to... #{runner_up}!"
