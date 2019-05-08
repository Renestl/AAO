# Write a method unique_elements that takes in an array and returns a new array where all duplicate elements are removed. Solve this using a hash.

# Hint: all keys of a hash are automatically unique

def unique_elements(arr)
	remove_dups = Hash.new(0)
	
	arr.each do |ele|
		if !remove_dups.has_key?(ele)
			remove_dups[ele] = 0
		end
	end

	remove_dups.keys { |key| return key}

end

print unique_elements(['a', 'b', 'a', 'a', 'b', 'c']) #=> ["a", "b", "c"]
puts


# !! teacher solution

# def unique_elements(arr)
#   hash_elements = {}
#   arr.each { |ele| hash_elements[ele] = true }
#   return hash_elements.keys
# end

# print unique_elements(['a', 'b', 'a', 'a', 'b', 'c']) #=> ["a", "b", "c"]
# puts