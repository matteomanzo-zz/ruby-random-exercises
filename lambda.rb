# Lambdas in Ruby are also objects.
# The last expression of a lambda is its return value, just like regular functions.

# As objects, lambdas have methods and can be assigned to variables.

l = lambda { "Do or do not" }
puts l.call

# Lambdas take parameters by surrounding them with pipes.

l = lambda do |string|
  if string == "try"
    return "There's no such thing" 
  else
    return "Do or do not."
  end
end
puts l.call("hguv")
puts l.call("try")

# Now edit the lambda to the following code which increments any number passed by 1.

Increment = lambda {}

# Solution:

Increment = lambda {|n| n + 1}

Increment.call(1) # => 2
Increment.call(2) # => 3