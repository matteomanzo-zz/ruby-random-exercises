
class Cat

	def initialize
		@hungry = true
	end

	def add_name(name)
		@name = name
	end

	def feed
		@hungry = false
		self
	end

	def name
		$name
		"tiddles"
	end

	def stroke
		if @hungry 
			puts "miaow"
		else
			puts @name + " goes purr on " 
		end 
	end

end

class String
	def sayhello
		puts "say hello #{self}"
	end
end


mycat = Cat.new

"chris".sayhello

mycat.add_name("Felix")
# mycat.stroke

# puts "my cat is called " + mycat.name

mycat.feed.stroke