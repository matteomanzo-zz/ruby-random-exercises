# Scriviamo un programma che ci chieda d'inserire tante parole quante ne vogliamo
# (una parola per linea, continuando finché non premiamo Invio su una linea vuota),
# e che quindi ci ripeta le stesse parole in ordine alfabetico.
# We do this by first getting a user input, then pushing it into the array and asking to 
# show me the last thing of the array.
# Now we create a loop which will do this until we don't write anything and push return.
# Finally we puts the array sorted alphabetically.

puts 'Say something..'

say_something = gets.chomp
array = []
array.push say_something
puts array.last
while say_something != ''
	say_something = gets.chomp
	array.push say_something
	puts array.last
end

puts array.sort

# Try to do it without using sort