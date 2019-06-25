require './enumerables.rb'

class Array

	# My Flatten
	# my_flatten should return all elements of the array into a new, one-dimensional array. Hint: use recursion!
	def my_flatten
		flattened = []

		self.my_each do |ele|
			if ele.is_a?(Array)
				flattened.concat(ele.my_flatten)
			else
				flattened << ele
			end
		end

		flattened
	end

	# My Zip
	# Write my_zip to take any number of arguments. It should return a new array containing self.length elements. Each element of the new array should be an array with a length of the input arguments + 1 and contain the merged elements at that index. If the size of any argument is less than self, nil is returned for that location.
	def my_zip(*args)
		zip = []

		self.length.times.each_with_index do |ele, idx|
			zip << [self[ele]]

			args.my_each do |arg|
				zip[idx] << arg[ele]
			end

		end

		zip
	end

	# My Rotate
	# Write a method my_rotate that returns self rotated. By default, the array should rotate by one element. If a negative value is given, the array is rotated in the opposite direction.
	def my_rotate(pos = 1)
		rotate = pos % self.length
		self.drop(rotate) + self.take(rotate)
	end

	# My Join
	# my_join returns a single string containing all the elements of the array, separated by the given string separator. If no separator is given, an empty string is used.
	def my_join(seperator = '')
    joined = []

    self.length.times do |i|
      joined << self[i] 
      joined << seperator unless i == self.length - 1
    end

    joined.join('')
	end
	
	# My Reverse
	# Write a method that returns a new array containing all the elements of the original array in reverse order.
	def my_reverse
    reverse = []

    self.my_each do |ele|
      reverse.unshift(ele)
    end

    reverse
	end 
	
end

##########################

# My Flatten

# p [1, 2, 3, [4, [5, 6]], [[[7]], 8]].my_flatten # => [1, 2, 3, 4, 5, 6, 7, 8]


# My Zip

# a = [ 4, 5, 6 ]
# b = [ 7, 8, 9 ]
# p [1, 2, 3].my_zip(a, b) # => [[1, 4, 7], [2, 5, 8], [3, 6, 9]]
# p a.my_zip([1,2], [8])   # => [[4, 1, 8], [5, 2, nil], [6, nil, nil]]
# p [1, 2].my_zip(a, b)    # => [[1, 4, 7], [2, 5, 8]]

# c = [10, 11, 12]
# d = [13, 14, 15]
# p [1, 2].my_zip(a, b, c, d)    # => [[1, 4, 7, 10, 13], [2, 5, 8, 11, 14]]


# My Rotate
# a = [ "a", "b", "c", "d" ]
# p a.my_rotate         #=> ["b", "c", "d", "a"]
# p a.my_rotate(2)      #=> ["c", "d", "a", "b"]
# p a.my_rotate(-3)     #=> ["b", "c", "d", "a"]
# p a.my_rotate(15)     #=> ["d", "a", "b", "c"]

# My Join
# a = [ "a", "b", "c", "d" ]
# p a.my_join         # => "abcd"
# p a.my_join("$")    # => "a$b$c$d"

# My Reverse
# p [ "a", "b", "c" ].my_reverse   #=> ["c", "b", "a"]
# p [ 1 ].my_reverse               #=> [1]

