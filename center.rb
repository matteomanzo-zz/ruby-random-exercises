# Gets an input and shout it out in a string. We can break the string or calling 
# our variable with #{} inside the string.

puts "Salve impiegato, cosa desidera chiedermi?"
detto = gets.chomp
puts "COSA VORREBBE DIRE '" + detto.upcase + "'??? SEI LICENZIATO!!"
puts "#{detto.upcase} ???"

# ^^^^^^^^^^^^^^^^^^^^^^^^


# Using center to align text. Dividing our length variable we can adjust the size
# of the output.

lineWidth = 30

i = 'Indice'
a = 'Capitolo 1:'
b = 'Capitolo 2:'
c = 'Capitolo 3:'
p = 'Pagina 1'
s = 'Pagina 7'
t = 'Pagina 12'
n = 'I Numeri'
l = 'Le Lettere'
v = 'Le Variabili'

puts i.center lineWidth
puts (a.ljust lineWidth/2) + (n.ljust lineWidth) + (p.rjust lineWidth/4)
puts (b.ljust lineWidth/2) + (l.ljust lineWidth) + (s.rjust lineWidth/4)
puts (c.ljust lineWidth/2) + (v.ljust lineWidth) + (t.rjust lineWidth/4)

# ^^^^^^^^^^^^^^^^^^^^^^^^^
comando = gets.chomp

while comando != 'quit'
	puts comando
	comando = gets.chomp
end
puts 'bona!'