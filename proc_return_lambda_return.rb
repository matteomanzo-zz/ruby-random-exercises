# When returning a Proc, the method stops straight away:
def proc_return
  Proc.new { return "Proc"}.call
  return "method proc_return finished"
end

puts proc_return

# When returning a lambda it goes untill the end of the method:

def lambda_return
  lambda { return "lambda" }.call
  return "method lambda_return finished"
end

puts lambda_return

# If we call a Proc and inside the block we put a return it will fail,
# the lambda, instead, doesn't stops and executes the method.

def generic_return(code)
  one, two    = 1, 2
  three, four = code.call(one, two)
  return "Give me a #{three} and a #{four}"
end

puts generic_return(lambda { |a, b| return a + 2, b + 2 })
puts generic_return(Proc.new { |a, b| return a + 2, b + 2 })
puts generic_return(Proc.new { |a, b| a + 2; b + 2 })
puts generic_return(Proc.new { |a, b| [a + 2, b + 2] })
