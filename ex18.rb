# Here we use two arguments:

def print_two(arg1, arg2)
  puts "arg1: #{arg1}, arg2: #{arg2}"
end

# and in here we can put as many arguments we want but not less then one:

def print_more(*args)
  args.each do |arg|
    puts arg
  end
end



print_two('Matt', 'Manzo')
print_more('one', 'two', 'three', 25)