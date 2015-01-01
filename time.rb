seconds = 60
minutes = 60
hours = 24
days = 365

# We define how many seconds we have in x minutes and we run the program telling it
# how many minutes we want to convert in seconds (in this case 3).

def seconds_in_a_minute(x)
	x * 60
end

puts seconds_in_a_minute(3)

# ^^^^^^^^^^^^^^^^^^^^^^^^^


# We define how many hours we have in an year moltiplicating the number of hours 
# that we have in a day and how many days we have in an year, so we just have to multiply
# it for the number of years.
# This time we don't write in the editor how many years we want to convert but we ask the
# user instead.

def hours_in_a_year(x)
	x * (24 * 365)
end

years = gets.chomp.to_i
puts hours_in_a_year(years)

# ^^^^^^^^^^^^^^^^^^^^^^^^^


# We do the same thing as we did before just extendind the formula to get minutes (which
# are 60 in an hour, which are 24 in a day, which are 365 in an year which are 10 in a decade).

def minutes_in_a_decade(x)
	x * (60 * 24 * 365 * 10)
end

puts minutes_in_a_decade(1)
# or
puts 10 * (minutes * hours * days)

# ^^^^^^^^^^^^^^^^^^^^^^^^^


# We want to calculate how many years fit in millions of seconds.
# We do this by dividing the billions of second that we have by the amount of seconds in an year.

def years_in_millions_of_seconds(x)
	(x * 1000000) / (60 * 60 * 24 * 365)
end

puts years_in_millions_of_seconds(1031)

# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^