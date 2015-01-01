# We are playing with strings and user inputs, combining them to create funny phrases.

puts 'Please write your name'
name = gets.chomp
puts 'Please write your surname'
surname = gets.chomp
puts 'Hello ' + name + ' ' + surname + '!! Your full name has ' + (name.length + surname.length).to_s + ' letters.'
puts "Hello #{name} #{surname} !!"

# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

# We ask the user for a number, then we convert the answer into an integer, add one to it
# and converted again to a string to put it out as a sentence.

puts 'Enter a number'
number = gets.chomp
puts 'Nice number, but what about ' + (number.to_i + 1).to_s + '? I think that\'s way better.'

# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^