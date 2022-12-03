# While loop
counter = 0

while counter <= 10 do
  # puts counter
  counter += 1
end

# Off by one errors

numbers = [0, 1, 2, 3, 4, 5]

index = 0

while index <= numbers.length do
  # puts numbers[index]
  index += 1
end

# Until: checks that the condition is false

bananas = 0 

until bananas >= 100 do
  bunch = rand 6
  bananas += bunch
  # puts "I have #{bananas} bananas"
end

# For

index = 0
array = ['random', 'stuff', 'for', 3432, "printing"]

for item in array do
  # puts item
end

for item in array do 
  item = item * 2
end

for i in 0...array.length do
  # p array[i] * 2
end

object = ['stuff', 'that', 'lives', 'in', 'array']

# Less good:
for item in object do 
  puts item.upcase
end

# puts item

# Better
object.each do |thing| 
  puts thing.reverse
end
 
# puts thing 

(0...object.length).each do | i |
  object[i] = 'evil ' + object[i]
end

# p object

dinosaurs = [
  'brachiosaur',
  'brontosaurus', 
  't-rex',
  'raptor'
]

dinosaurs.each_with_index do |dinosaur, index|
  # p dinosaurs[index] = 'Awesome ' + dinosaur
end

bad_guys = [
  'Darth Vader',
  'Biff Tannen', 
  'Maleficent',
  'Regina George'
]

opinions_about_bad_guys = []

bad_guys.each do |villain|
  opinion = "#{villain} is real bad news"
  # puts opinion
  opinions_about_bad_guys << opinion
end

# p opinions_about_bad_guys

# Filters

numbers = [1220, 320, 424, 150, 283, 231, 48349]

odds = numbers.select { |n| n.odd? }
evens = numbers.reject { |n| n.odd? }
# p odds
# p evens

(1..10).any? { |n| n.odd? }

doubles = (1..10).map { |n| n*2 }

# p doubles.all? { |n| n.odd? }

# puts (1..10).find { |n| n % 7 == 0 } # shortcut for .detect

# reduce/inject

costs = [34.21, 45, 23.21, 65.34, 0.20]

total_costs = 0

# costs.each do |receipt|
#   total_costs += receipt
# end

# p total_costs

sum = costs.reduce 0 do |total, receipt|
  total + receipt
end

# p sum

strings = ["There", "can", "only", "be", "one"].reduce "" do |string, word|
  # p string << word # same as concat
end

p [3, 4, 12, 53, 21].reduce :*

profits = 20_000
expensses = [100, 3400, 213, 50, 21] 

expensses.reduce profits, :-