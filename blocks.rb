# (1..10).map { |x| x**2 }

def square x
  x**2
end

p square 10

def do_something_to x
  yield x if block_given?
end

p do_something_to(3) { |x| x**2 }
p do_something_to(3)

def print_result x
  p yield x
end

print_result(2) {|x| x**2}

def sum_results x, y
  x_result = yield x
  y_result = yield y
  x_result + y_result
end

p sum_results(2, 3) {|x| x**2}
p sum_results(2, 3) {|x| x**x}

def call_block_with_3_and_5
  yield 3, 5
end

p call_block_with_3_and_5 {|x, y| x**y}