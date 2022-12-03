# State
test_string = "cowboy"
# p test_string.reverse!

# Behaviors (methods)
# p test_string.methods

# Class definition

class Dog 
  #define instance methods

  # attr_reader :name
  # attr_writer :name

#OR
  attr_accessor :name # if you can avoid using getter or especially setter, you should do that.

  # define initialize method
  def initialize name
    # save arguments to instance variables
    # instance variable expands scope
    @name = name
  end

  def name
    @name
  end

  # def name=new_name
  #   @name = new_name
  # end

  def speak
    puts "BARK!"
    puts "Excuse me I'm #{@name}"
  end
end

fido = Dog.new "Fido"

# p fido.methods
fido.speak

fido.name="T-Rex"
p fido

# Accessors: 
# Getters let you read an instance variable
# Setters let you change an instance variable
