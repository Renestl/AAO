# Classes

# cat_1 = {name: "Sennacy", color: "brown", age: 3}
# cat_2 = {name: "Whiskers", color: "white", age: 5}
# cat_3 = {name: "Garfield", color: "orange", age: 7}

# Defining a class
class Cat
	def initialize(name, color, age)
		@name = name
		@color = color
		@age = age
	end

	# getter method
	def name
		@name
	end

	def color
		@color
	end

	def age
		@age
	end

	# setter method
	def age=(new_age)
		@age = new_age
	end

	def meow_at(person)
		puts "#{@name} meows at #{person}"
	end
end

# initialize an instance of Cat
cat_1 = Cat.new("Sennacy", "brown", 3)
# p cat_1.name
# p cat_1.age
p cat_1
# cat_1.age = 7
# cat_1.age=(7)
# p cat_1
cat_1.meow_at("Alvin")

cat_2 = Cat.new("Whiskers", "white", 5)
# p cat_2.name
cat_2.meow_at("Tommy")