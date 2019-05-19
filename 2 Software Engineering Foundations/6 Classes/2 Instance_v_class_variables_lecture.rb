# Instance vs Class Variables

class Car
	# @@num_wheels = 4
	NUM_WHEELS = 4

	def initialize(color)
		@color = color
	end

	# def self.upgrade
	# 	NUM_WHEELS = 0
	# end

	def num_wheels
		NUM_WHEELS
	end
end

car_1 = Car.new("black")
car_2 = Car.new("red")

# p car_1
# p car_2

p car_1.num_wheels
p car_2.num_wheels

# Car.upgrade

# p car_1.num_wheels
# p car_2.num_wheels

# car_3 = Car.new("silver")
# p car_3.num_wheels