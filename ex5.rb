name = 'Matteo Manzo'
age = 25
height = 184 # centimeters
weight = 70 # kilograms
eyes = 'Blue'
teeth = 'White'
hair = 'Light Brown'
to_pounds = weight * 2.2
to_inches = height * 0.39

def inches(x)
	x * 0.39
end

puts "Let's talk about #{name}."
puts "He's #{height} centimeters tall."
puts "He's #{weight} kilos heavy."
puts "Actually that's not too heavy."
puts "He's got #{eyes} eyes and #{hair} hair."
puts "His teeth are usually #{teeth} depending on the coffee."

puts "If I add #{age}, #{height} and #{weight} I get #{age + height + weight}."

puts to_inches
puts inches(height)