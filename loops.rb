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
  p dinosaurs[index] = 'Awesome ' + dinosaur
end
