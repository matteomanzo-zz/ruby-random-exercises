# The ARGV is the "argument variable", a very standard name in programming, that you will
# find used in many other languages. This variable holds the arguments you pass to your 
# Ruby script when you run it. In the exercise you will get to play with this more and see
# what happens.

first, second, third = ARGV

puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"

# $ ruby ex13.rb qui quo qua    \\   we have to pass the argument when we execute the program.

# Line 6 "unpacks" ARGV so that, rather than holding all the arguments, it gets assigned to
# four variables you can work with: first, second and third. This may look strange, but
# "unpack" is probably the best word to describe what it does. It just says:
# "Take whatever si in ARGV, unpack it, and assign it to all of these variables on the left
# order." After that we print them out like normal.

a, b, c = ARGV
print "Please pass the first argument: "
a = gets.chomp
print "Please pass the second argument: "
b = gets.chomp
print "Please pass the third argument: "
c = gets.chomp

puts "Your first variable is: #{a}"
puts "Your second variable is: #{b}"
puts "Your third variable is: #{c}"