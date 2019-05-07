# range enumerable
# (start..end).each, iterate from start to end (inclusive)
# (start...end).each, iterate from start to end (excluding end)

# arr =["a", "b", "c"]
arr = [1,2,3,4,5]

# arr.each { 
# 	|num| 
# 	puts num
# }

# (1..20).each { 
# 	|num| 
# 	puts num 
# }

(1...20).each { 
	|num| 
	puts num 
}



# Write a method fizzBuzz that takes in a number max and returns an array containing all numbers less than max that are divisible by 3 or 5, but not both.

def fizzBuzz(max)
	arr = []

	(1...max).each do |num|
		if num % 3 == 0 && num % 5 != 0
			arr << num
		end
		if num % 3 != 0 && num % 5 == 0
			arr << num
		end
	end

	return arr
end

print fizzBuzz(20)