procs = [
  # standard
  Proc.new {|x, y| p x + y},
  proc {p "Hello Squirrels!"},
  # lambda
  lambda {|x| p x**2},
  ->(name) {p "Hello " + name}
]

p procs.map(&:lambda?)
# Lambda behave more like methods

# 1 - Vanilla procs don't care how many arguments you pass them

# p procs.each {|proc| proc.call(1, 3)}

# 2 - return behaves differently
#   return works for lambda, but for non-lambda return will return the enclosing method (or throw an error if you're not in a method)

# def call_proc
#   proc_1 = Proc.new {|phrase| return p phrase}
#   proc_1.call("Hello Squirrels")
#   p "Did I get run?"
# end

# call_proc 

@proc_1 = lambda {|phrase| return p phrase}
def call_proc
  @proc_1.call("Hello Squirrels")
  p "Did I get run?"
end

p call_proc