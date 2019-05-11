# Introduction to Sorting Algorithms

# Bubble Sort Algorithm

# The Bubble Sort algorithm gets its name because it behaves as if the large numbers float to the top of the array like bubbles.

array = ["a", "b", "c", "d"]    # let's swap "a" and "b"
temp = array[0];                # save a copy of the first ele
array[0] = array[1];            # overwrite the first ele with the second ele
array[1] = temp;                # overwrite the second ele with the first ele copy
p array          # => ["b", "a", "c", "d"]

#  Shortcut
array = ["a", "b", "c", "d"]    # let's swap "a" and "b"
array[0], array[1] = array[1], array[0]
p array         # => ["b", "a", "c", "d"]

# Bubble Sort Ruby Implementation

def bubble_sort(array)
	sorted = false
	while !sorted
			sorted = true

			(0...array.length - 1).each do |i|
					if array[i] > array[i + 1]
							array[i], array[i + 1] = array[i + 1], array[i]
							sorted = false
					end
			end
	end

	array
end