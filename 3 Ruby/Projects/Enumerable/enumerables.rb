class Array

# My Each
# Extend the Array class to include a method named my_each that takes a block, calls the block on every element of the array, and returns the original array.
	def my_each(&prc)
		current = 0

		while current < self.length
			puts self[current]
			current += 1
		end

		self
	end


end

# p [1,2,3].my_each { |num| puts num}
# p return_value = [1, 2, 3].my_each do |num|
#   puts num
# end.my_each do |num|
#   puts num
# end