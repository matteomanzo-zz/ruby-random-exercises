def print_header
	lineWidth = 50
	print ("The students of my cohort at Makers Academy\n--------------\n".center(lineWidth))
end

def print_names(students) 
    i = 0
    while i < students.length
    	p students[i]
      i += 1
    end
end

def print_footer(names)
	print "Overall, we have #{names.length} great students\n"
end

def input_students
	lineWidth = 50
	puts ""
	puts ("Please enter the names of the students".center(lineWidth))
	puts ("To finish, just hit return three times".center(lineWidth))
	#create the empty array
	students = []
	#get the name from user
	name = gets.chomp

	puts ("Which cohort will you join?".center(lineWidth))
	cohort = gets.chomp
	if cohort == ""
		cohort = :december
	else cohort
	end
	puts ("Where you come from?".center(lineWidth))
	state = gets.chomp
	puts ("Which hobbies do you have?".center(lineWidth))
	hobbie = gets.chomp
	puts "Are these informations correct? Type 'yes' to save them or 'not' to write it again"
	confirm = gets.chomp.downcase
	if confirm == "yes"
	#while the name is not empty, repeat this code
		while !name.empty? do
			#add the hash to the students array
			students << {:name => name.downcase.capitalize!, :country => state.downcase.capitalize!, :hobbie => hobbie.downcase.capitalize!, :cohort => cohort.to_sym}
			puts ("Now we have #{students.length} students".center(lineWidth))
			puts ""
			#gets another name
			puts ("What's your name?".center(lineWidth))
			name = gets.chomp
			puts ("Which cohort will you join?".center(lineWidth))
			cohort = gets.chomp
			if cohort == ""
				cohort = :december
			else cohort
			end
			puts ("Where you come from?".center(lineWidth))
			state = gets.chomp
			puts ("Which hobbies do you have?".center(lineWidth))
			hobbie = gets.chomp
		end
	else
		return input_students
	end

	#return the students array
	students
end

students = input_students
print_header
print_names(students)
print_footer(students)

