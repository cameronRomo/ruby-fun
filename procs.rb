square = Proc.new {|x| x**2}
# Only with newer versions can you use proc instead of Proc.new
cube = proc {|x| x**3}

p square.call(2)

def method_with_proc p1, arg1, p2, arg2
  p p1.call(arg1.to_i)
  p p2.call(arg2.to_i)
end

method_with_proc square, "12", cube, 11

# Use a proc as a block
# & to convert to proc <-> block

p (1..10).map(&cube)
p (1..20).select(&:even?)

odd = :odd?.to_proc
p (1..11).map(&odd)

def takes_a_block &block
  3.times(&block)
end

takes_a_block {|x| puts "Hello!"}