#Problem 1: You have array of integers. Write a recursive solution to find the sum of the integers.

def sum_recur(array)
	return 0 if array.empty?

	array[0] + sum_recur(array[1..-1])
end

#Problem 2: You have array of integers. Write a recursive solution to determine whether or not the array contains a specific value.

def includes?(array, target)
	return false if array.empty?
	return true if array.last == target

	includes?(array[0...-1], target)
end

# Problem 3: You have an unsorted array of integers. Write a recursive solution to count the number of occurrences of a specific value.

def num_occur(array, target)
	return 0 if array.empty?
	return count += 1 if array.last == target

	count = num_occur(array[0...-1], target)

end

# Problem 4: 

def add_to_twelve?(array)
end

# Problem 5: 

def sorted?(array)
end

# Problem 6: 

def reverse(string)
end
