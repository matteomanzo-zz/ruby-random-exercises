# Variables...

def beers_and_wine(bottles_of_beer, bottles_of_wine)
  puts "we have #{bottles_of_beer} bottles of beer!"
  puts "we have #{bottles_of_wine} bottles of wine!"
end

# We can call it with numbers:

beers_and_wine(20,7)

# Or input the parameters as other variables:

beer = 20
wine = 7
beers_and_wine(beer, wine)