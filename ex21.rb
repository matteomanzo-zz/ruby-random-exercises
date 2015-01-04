# Math functions..

def add(a, b)
  puts "adding #{a} + #{b}"
  return a + b
end

def sub(a, b)
  puts "subtracting #{a} - #{b}"
  return a - b
end

def multiplicate(a, b)
  puts "multiplicating #{a} * #{b}"
  return a * b
end

def divide(a, b)
  puts "dividing #{a} / #{b}"
  return a / b
end

age = add(20, 5)
height = sub(200, 15)
weight = multiplicate(35, 2)
iq = divide(100, 2)

math = add(age, sub(height, multiplicate(weight, divide(iq, 2))))

puts "nice calculation: #{math}"