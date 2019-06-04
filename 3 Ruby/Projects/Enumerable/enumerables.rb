class Array

	# My Each
	# Extend the Array class to include a method named my_each that takes a block, calls the block on every element of the array, and returns the original array.
	def my_each(&prc)
		idx = 0

		while idx < self.length
			prc.call(self[idx])
			idx += 1
		end

		self
	end


	# My Select
	# Now extend the Array class to include my_select that takes a block and returns a new array containing only elements that satisfy the block. Use your my_each method!
	def my_select(&prc)
		new_array = []

		self.my_each do |ele|
			new_array << ele if prc.call(ele)				
		end

		new_array
	end

	# My Reject
	# Write my_reject to take a block and return a new array excluding elements that satisfy the block.
	def my_reject(&prc)
		new_array = []

		self.my_each do |ele|
			new_array << ele if !prc.call(ele)				
		end

		new_array
	end


end

# #######################

## My Each

# p [1,2,3].my_each { |num| puts num}
# p return_value = [1,2,3].my_each { |num| puts num}.my_each { |num| puts num}

## My Select

# a = [1, 2, 3, 7]
# p a.my_select { |num| num > 1 } # => [2, 3]
# p a.my_select { |num| num == 4 } # => []

## My Reject

# a = [1, 2, 3]
# p a.my_reject { |num| num > 1 } # => [1]
# p a.my_reject { |num| num == 4 } # => [1, 2, 3]