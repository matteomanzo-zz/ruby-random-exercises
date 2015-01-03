# A block created with lambda behaves like a method when you use return
# and simply exits the block, handing control back to the calling method.

def a_method
 lambda { return "we just returned from the block" }.call
end

puts a_method # => "we just returned from the block"

def a_method
 lambda { return "we just returned from the block" }.call
 return "we just returned from the calling method"
end

puts a_method # => "we just returned from the calling method"

# ^^^^^^^^^^^^^^^^^^^^^^^^^

# A block created with Proc.new behaves like it’s a part of the calling method when return is used within it,
# and returns from both the block itself as well as the calling method.

def a_method
 Proc.new { return "we just returned from the block" }.call
 return "we just returned from the calling method"
end

puts a_method # => "we just returned from the block"
