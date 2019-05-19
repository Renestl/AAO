# Instance vs Class Methods

class Dog
	def initialize(name)
		@name = name
	end

	# bark is a class method
	def self.bark
		"WOOF!!!"
	end

	def self.compare_dogs(dog_1, dog_2)
		if (dog_1.name.length > dog_2.name.length)
			return dog_1.name
		else
			return dog_2.name
		end
	end

	# yell_name is an instance method
	def yell_name
		@name.upcase + "!"
	end	

	def greet
		self.yell_name + " says hi."
	end

	def name
		@name
	end
end

# dog_1 = Dog.new("Fido")
# p dog_1
# p dog_1.yell_name
# p dog_1.greet


# dog_2 = Dog.new("Spot")
# p dog_2.yell_name

# Dog::bark is a class method
# Dog#yell_name is an instance method

# p Dog.bark

d1 = Dog.new("Snoopy")
d2 = Dog.new("Spot")

p Dog.compare_dogs(d1, d2)