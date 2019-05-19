class Dog
	def initialize(name, breed, age, bark, favorite_foods)
		@name = name
		@breed = breed
		@bark = bark
		@age = age
		@favorite_foods = favorite_foods
	end

	# getter methods
	def name
		@name
	end

	def breed
		@breed
	end

	def age
		@age
	end

	def bark
		@bark
	end

	def favorite_foods
		@favorite_foods
	end

	# setter methods
	def age=(new_age)
		@age = new_age
	end

	def bark
		if (@age > 3)
			@bark.upcase
		else
			@bark.downcase
		end
	end

	def favorite_food?(str)
		if @favorite_foods.include?(str.capitalize)
			return true
		else
			return false
		end

		# @favorite_foods.map(&:downcase).include?(str.downcase)
	end
end
