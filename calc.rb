# encoding: utf-8

say = ''

while say != "CIAO"
	say = gets.chomp
	anno = rand(1920..1950)
	nonna = ["STA ZITTO!", "CHE CARINO CHE SEI..", "COSA? IO NON SONO TUA NONNA!!!", "NOT SINCE #{anno}!"].shuffle.first
	if say == say.upcase
		puts nonna
	else puts "WHAT DID YOU SAY?? I CAN'T HEAR YOU!!!"
	end
end
