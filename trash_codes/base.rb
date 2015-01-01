def print_header
	puts "The students of my cohort at Makers Academy"
    puts "--------------"
end

def print(students)
	students.each {|student| puts "#{student[:name]} (#{student[:cohort]} cohort)"}
end

def print_footer(names)
	puts "Overall, we have #{names.length} great students"
end

def input_students
	puts "Please enter the names of the students"
	puts "To finish, just hit return twice"
	#create the empty array
	students = []
	#get the name from user
	name = gets.chomp
	#while the name is not empty, repeat this code
	while !name.empty? do
		#add the hash to the students array
		students << {:name => name, :cohort => :december}
		puts "Now we have #{students.length} students"
		#gets another name
		name = gets.chomp
	end
	#return the students array
	students
end

students = input_students
print_header
print(students)
print_footer(students)
