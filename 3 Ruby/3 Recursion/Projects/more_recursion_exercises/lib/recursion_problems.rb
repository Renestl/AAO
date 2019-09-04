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
	count = 0

	return 0 if array.empty?
	
	count += 1 if array.first == target
	return count if array.length == 1

	count + num_occur(array[1..-1], target)
end

# Problem 4: You have array of integers. Write a recursive solution to determine whether or not two adjacent elements of the array add to 12.

def add_to_twelve?(array)
	sum = array[0] + array[1] == 12
	return sum if sum || array.length == 2

	add_to_twelve?(array.drop(1))
end

# Problem 5: You have array of integers. Write a recursive solution to determine if the array is sorted.

def sorted?(array)
	return true if array.empty?
	return true if array.length == 1

	sorted = array[0] <= array[1]
	return sorted if !sorted || array.length == 2

	sorted?(array.drop(1))

end

# Problem 6: Write a recursive function to reverse a string. Don't use any built-in #reverse methods!

def reverse(string)
	return string if string.length <= 1

	reverse(string[1..-1]) + string[0]
end
