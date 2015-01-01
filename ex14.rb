# Let's do one exercise that uses ARGV and gets.chomp together to ask the user
# something specific. In this exercise we'll use gets.chomp slightly differently
# by having it print a simple > prompt.

user_name = ARGV.first
prompt = '> '

puts "Hi #{user_name}."
puts "I'd like to ask you a few questions."
puts "Do you like me #{user_name}? ", prompt
likes = $stdin.gets.chomp

puts "Where do you live #{user_name}? ", prompt
lives = $stdin.gets.chomp

puts "What kind of computer do you have? ", prompt
computer = $stdin.gets.chomp

puts """
Alright, so you said #{likes} about liking me.
You live in #{lives}. Not sure where that is.
And you have a #{computer} computer. Nice.
"""

# We make a variable prompt that is set to the prompt we want, and we give that to gets.chomp
# instead of typing it over and over. Now if we want to make the prompt something else, we just
# change it in this one spot and rerun the script.