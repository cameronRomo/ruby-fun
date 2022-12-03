# State
test_string = "cowboy"
# p test_string.reverse!

# Behaviors (methods)
# p test_string.methods

# Class definition

# class Dog 
#   #define instance methods

#   # attr_reader :name
#   # attr_writer :name

# #OR
#   attr_accessor :name # if you can avoid using getter or especially setter, you should do that.

#   # define initialize method
#   def initialize name
#     # save arguments to instance variables
#     # instance variable expands scope
#     @name = name
#   end

#   def name
#     @name
#   end

#   # def name=new_name
#   #   @name = new_name
#   # end

#   def speak
#     puts "BARK!"
#     puts "Excuse me I'm #{@name}"
#   end
# end

# fido = Dog.new "Fido"

# # p fido.methods
# fido.speak

# fido.name="T-Rex"
# p fido

# Accessors: 
# Getters let you read an instance variable
# Setters let you change an instance variable

class Dog
  def speak
    puts "BARK!"
  end
end

class Shape; end
class Rectangle < Shape; end
class Square < Rectangle; end
class Triangle < Shape; end
class IsocelesTriangle < Triangle; end

square = Square.new
p square.is_a? Triangle
p square.is_a? Rectangle

# Subclass is a specific kind of the superclass
# Classic Argument
# All Men are Mortal
# Socrates is a Man:

# Therefore:
# Socrates is mortal

class Mortal
  def initialize
    @alive = true
  end

  def die
    @alive = false
  end
end
class Man < Mortal; end

socrates = Man.new
p socrates.is_a? Mortal
p socrates.class.ancestors

p socrates
p socrates.die
p socrates