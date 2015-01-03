# The block should be the last parameter passed to a method.
# Placing an ampersand (&) before the name of the last variable triggers the conversion.

def calculation(a, b, &block) # &block is an explicit (named) parameter
 block.call(a, b)
end

puts calculation(5, 5) { |a, b| a + b } # this is an implicit block
                                        # -- it is nameless and is not 
                                        # passed as an explicit parameter.

# ^^^^^^^^^^^^^^^^^^^^^^^^^^^

def calculation(a, b)
  yield(a, b) # yield calls an implicit (unnamed) block 
end

addition = lambda {|x, y| x + y}
puts calculation(5, 5, &addition) # like our last example, &addition is 
                                  # an explicit (named) block 
                                  # -- but `yield` can still call it!      

# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^

# We have a method called filter that accepts an explicitly passed block.
# We look to the block to tell us whether a value from the array should be accepted or rejected.

# The Array.select method does exactly this but requires an implicit block.
# Try converting the explicit block into an implicit block and passing it on to Array.select.

def filter(array, block)
 return array.select # Your code here
end

# Solution:

def filter(array, block)
  return array.select(&block)
end

# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^

# Let’s make this more complicated by changing our filter method itself to a block,
# and make the incoming block that does the filtration an implicitly passed one.

# Here, you’ll need to convert the block passed to Filter from implicit to explicit, then back again.

Filter = lambda do |array|
 array.select
end

# Solution:

Filter = lambda do |array, &block|
  array.select(&block)
end