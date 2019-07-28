# Binary Search
# The binary search algorithm begins by comparing the target value to the value of the middle element of the sorted array. If the target value is equal to the middle element's value, then the position is returned and the search is finished. If the target value is less than the middle element's value, then the search continues on the lower half of the array; or if the target value is greater than the middle element's value, then the search continues on the upper half of the array. This process continues, eliminating half of the elements, and comparing the target value to the value of the middle element of the remaining elements - until the target value is either found (and its associated element position is returned), or until the entire array has been searched (and "not found" is returned).

# Write a recursive binary search: bsearch(array, target). Note that binary search only works on sorted arrays. Make sure to return the location of the found object (or nil if not found!). Hint: you will probably want to use subarrays.

def bsearch(array, target)
	return nil if array.length == 0

	midpoint = array.length / 2
	left_side = array[0..midpoint].take(midpoint)
	right_side = array.drop(midpoint + 1)

	if target < array[midpoint] 
		bsearch(left_side, target)
	elsif target > array[midpoint] 
		index = bsearch(right_side, target)
		index.nil? ? nil : (midpoint + 1) + index
	else
		midpoint
	end
end

# Test cases
p bsearch([1, 2, 3], 1) # => 0
p bsearch([2, 3, 4, 5], 3) # => 1
p bsearch([2, 4, 6, 8, 10], 6) # => 2
p bsearch([1, 3, 4, 5, 9], 5) # => 3
p bsearch([1, 2, 3, 4, 5, 6], 6) # => 5
p bsearch([1, 2, 3, 4, 5, 6], 0) # => nil
p bsearch([1, 2, 3, 4, 5, 7], 6) # => nil