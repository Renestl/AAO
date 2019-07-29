# Merge Sort
# Implement a method merge_sort that sorts an Array:

# The base cases are for arrays of length zero or one. Do not use a length-two array as a base case. This is unnecessary.
# You'll want to write a merge helper method to merge the sorted halves.
# To get a visual idea of how merge sort works, watch this gif and check out this diagram.

def merge_sort(array)
	return [] if array.length == 0
	return array if array.length == 1

	midpoint = array.length / 2
	left_side = array[0..midpoint].take(midpoint)
	right_side = array.drop(midpoint)

	merge(merge_sort(left_side), merge_sort(right_side))
	# merge_sort(merge(left_side, right_side))

end

def merge(arr1, arr2)
	sorted_array = []

	until (arr1.empty? || arr2.empty?)
		sorted_array << (arr1.first < arr2.first ? arr1.shift : arr2.shift)
	end

	sorted_array + arr1 + arr2
end

# Test cases
p merge_sort([38, 27, 43, 3, 9, 82, 10])  # [3, 9, 10, 27, 38, 43, 82]
p merge_sort([6, 5, 3, 1, 8, 7, 2, 4])  # [1, 2, 3, 4, 5, 6, 7, 8]