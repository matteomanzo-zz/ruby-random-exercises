class Kids
	# def name=(name)
	# 	@name = name
	# end

	# def name
	# 	@name
	# end
	attr_accessor :name, :age, :toys

	def initialize(name, age=5)
		self.name = name
		self.age = age
		self.toys = []
	end

	def add_toys(name, color)
		Toys.new(name, color, self)
	end

	def show_toys
		# print self.name
		self.toys.each {|toy| puts "#{self.name}: #{toy.name} #{toy.color}"}
	end
end

class Toys
	attr_accessor :name, :color 
	def initialize(name, color = 'blue', owner)
		self.name = name
		self.color = color
		@owner = owner

		owner.toys << self
	end
 # p self.class # => Toys
end

mykid = Kids.new 'Steve'
# mykid.name = ('Matteo')

# mykid.age = 10

p mykid.age
p mykid.name

mykid.add_toys('bazooka', 'green')
mykid.add_toys('ferrari', 'red')
mykid.show_toys