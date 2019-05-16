# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.

def prime?(num)
	return false if num < 2

	(2...num).none? { |i| num % i == 0}	
end


def largest_prime_factor(num)
	factors = []

	(2...num).each do |divisor|
		if num % divisor == 0
		factors << divisor
		end
	end

	if factors.length < 1
		return num
	end

	i = factors.length - 1
	while i >= 0 do 	
		if			
			prime?(factors[i])
			return factors[i]	
		end
		
		i -= 1
	end
end

# TEACHER SOLUTION

# def prime?(num)
# 	return false if num < 2

# 	(2...num).none? { |i| num % i == 0}	
# end

# def largest_prime_factor(num)
# 	num.downto(2) do |factor|
# 		if num % factor == 0 and prime?(factor)
# 			return factor
# 		end
# 	end
# end

#----------------------------


def unique_chars?(str)
	already_seen = []

	str.each_char do |char|
		if already_seen.include?(char)
			return false
		end
		already_seen << char
	end

	true
end

#----------------------------

def dupe_indices(arr)
	indexed = Hash.new { |hash, key| hash[key] = [] }
	
	arr.each_with_index do |ele, idx|
		indexed[ele] << idx
	end

	indexed.select { |ele, arr| arr.length > 1}
end

#----------------------------

def ele_count(arr)
	count = Hash.new(0)

	arr.each { |ele| count[ele] +=1 }
	
	count
end

def ana_array(arr_1, arr_2)
	count_1 = ele_count(arr_1)
	count_2 = ele_count(arr_2)
	count_1 == count_2

end