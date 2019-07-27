# Warmup

# Write a recursive method, range, that takes a start and an end and returns an array of all numbers in that range, exclusive. For example, range(1, 5) should return [1, 2, 3, 4]. If end < start, you can return an empty array.
# Write both a recursive and iterative version of sum of an array.

# iterative
def range(start_num, end_num)
	nums = []

	return nums if end_num < start_num
	(start_num..end_num).each { |num| nums << num }

	nums
end

# recursive
def range(start_num, end_num)
	return [] if end_num < start_num
	return [start_num] if start_num == end_num

	range(start_num, end_num - 1) << end_num
end

# Test Cases
p range(1, 5) #[1, 2, 3, 4]
p range(5, 1) # []
p range(1, 2) # [1, 2]
p range(7, 7) # [7]