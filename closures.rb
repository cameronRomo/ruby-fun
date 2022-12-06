# Procs and lambdas are closures
# * they are functions which have acess to the scope that they were defined in.

def proc_maker
  counter = 1
  proc { counter = counter + 1 }
end

incrementer = proc_maker

# p incrementer.call()
# p incrementer.call() # Holds in memory and incremnts from where it left off

def create_two_procs
  unique_variable = 0
  [
    proc { unique_variable += 1},
    lambda { unique_variable -= 1},
    lambda { unique_variable }
  ]
end

adder, subtractor, getter = create_two_procs
p adder
p subtractor

p adder.call()
p adder.call()
p adder.call()

p subtractor.call()

p getter.call()