# Vogliamo trovare gli anni bisestili dato un anno d'inizio ed uno di fine.
# Dopo averli raggruppati in una matrice, calcoliamo se un anno è divisibile per 400, oppure se un anno
# diviso 100 avanza qualcosa, e se quell'anno è divisibile per 4.

puts "Write the starting year:"
start_year = gets.chomp
puts "Write the ending year:"
end_year = gets.chomp
puts ''

year = (start_year..end_year).to_a

year.each do |y|
	if (y.to_i) % 400 == 0 || ((y.to_i) % 100 != 0 && (y.to_i) % 4 == 0)
		puts y
	end
end