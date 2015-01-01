lineWidth = 50
@lineWidth = lineWidth
def print_header
	puts ("The students of my cohort at Makers Academy".center(@lineWidth))
	puts ("--------------".center(@lineWidth))
end

def print_list(students)
	i = 0
	while i < students.length
		puts ("#{i+1}. #{students[i][:name].capitalize}, #{students[i][:country].capitalize}, #{students[i][:hobbies].capitalize} (#{students[i][:cohort].capitalize} cohort)".center(@lineWidth))
			i += 1
		end
	end

def print_footer(students)
	puts ("Overall, we have #{students.length} great students".center(@lineWidth))
end

def input_students
	puts ("Please enter the names of the students".center(@lineWidth))
	puts ("To finish, just hit return twice".center(@lineWidth))
	#create the empty array
	students = []
	#get the name from user
	name = gets.chomp
	
	while !name.empty? do
		puts ("Which cohort will you join?".center(@lineWidth))
		cohort = gets.chomp
		puts ("Where you come from?".center(@lineWidth))
		country = gets.chomp
		puts ("Which hobbies do you have?".center(@lineWidth))
		hobbies = gets.chomp
		#add the hash to the students array
		students << {:name => name, :cohort => :december, :country => country, :hobbies => hobbies}
		puts ("Now we have #{students.length} students".center(@lineWidth))
		#gets another name
		puts ("What's your name?".center(@lineWidth))
		name = gets.chomp
	end
	

	#return the students array
	students
end

students = input_students
print_header
print_list(students)
print_footer(students)