# As you use blocks, you will discover that the most common usage involves passing exactly one block to a method.

def calculation(a, b, operation)
  operation.call(a, b)
end

puts calculation(5, 6, lambda { |a, b| a + b }) # addition
puts calculation(5, 6, lambda { |a, b| a - b }) # subtraction

# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^


# Ruby has a special keyword and syntax to make this pattern easier to use!
# Meet the yield keyword, Ruby's implementation of the most common way of using blocks.

def calculation(a, b)
  yield(a, b)
end

puts calculation(5, 6) { |a, b| a + b } # addition
puts calculation(5, 6) { |a, b| a - b } # subtraction

# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^


# Here's an example where neither the method nor the block take any parameters.

def foo
 yield
end
foo { puts "sometimes shortcuts do get you there faster"  }