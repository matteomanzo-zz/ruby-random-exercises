# We use ARGV to get the file (we have to pass the file when we execute the program)
filename = ARGV.first
# We declare a variable called 'txt' which will open the file
txt = open(filename)
# We puts the string telling which file we are working on
puts "Here's your file #{filename}:"
# And we print it out
print txt.read

# This is exactly the same thing but asking the user once the program is running.
print "Type the filename again: "
file_again = $stdin.gets.chomp

txt_again = open(file_again)

print txt_again.read