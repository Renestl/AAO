# Write a method frequent_letters that takes in a string and returns an array containing the characters that appeared more than twice in the string.

def frequent_letters(string)
	arr = []
	letters = Hash.new(0)

	string.each_char do |char| 
		letters[char] += 1	
	end

	letters.each do |ele, val| 
		if val > 2 
			arr << ele
		end		
	end

	return arr
end

print frequent_letters('mississippi') #=> ["i", "s"]
puts
print frequent_letters('bootcamp') #=> []
puts