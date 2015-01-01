print "Give me a number: "
number = gets.chomp.to_i

bigger = number * 100
puts "A bigger number is #{bigger}."

print "Give me another number: "
another = gets.chomp
number = another.to_i

smaller = number / 100
puts "A smaller number is #{smaller}."

# ^^^^^^^^^^^^^^^^^^^^

print "How much would you give to me? "
cash = gets.chomp.to_f

change = cash - cash * 0.1

puts "Thanks, anyway I'll keep the 90% so #{change} and you can keep the 10%, so #{cash * 0.1}."