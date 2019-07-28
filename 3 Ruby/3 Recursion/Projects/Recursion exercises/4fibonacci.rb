# Fibonacci
# Write a recursive and an iterative Fibonacci method. The method should take in an integer n and return the first n Fibonacci numbers in an array.

# You shouldn't have to pass any arrays between methods; you should be able to do this just passing a single argument for the number of Fibonacci numbers requested.

def iterative_fibonacci(num)
	return [num] if num == 0 || num == 1

	first_num = [0,1]

	until first_num.length == num
		first_num << first_num[-1] + first_num[-2]
	end
	
	first_num
end

def recursive_fibonacci(num)
	return [num] if num == 0 || num == 1
	return [0, 1] if num == 2

	first_num = recursive_fibonacci(num - 1)
	first_num << first_num[-1] + first_num[-2]
end


# Test cases
p iterative_fibonacci(0) # [0]
p iterative_fibonacci(1) # [1]
p iterative_fibonacci(5) # [0, 1, 1, 2, 3]
p iterative_fibonacci(10) # [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]


p recursive_fibonacci(0)
p recursive_fibonacci(1)
p recursive_fibonacci(2)
p recursive_fibonacci(5)
p recursive_fibonacci(10)
