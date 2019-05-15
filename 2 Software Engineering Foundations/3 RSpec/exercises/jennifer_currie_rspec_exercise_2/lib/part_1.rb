def partition(arr, num)
	grid = Array.new(2) { Array.new()}

	arr.each do |ele|
		if ele < num
			grid[0] << ele
		else
			grid[1] << ele
		end
	end

	grid
end


def merge(hash_1, hash_2)
	merged = Hash.new(0)

	hash_1.each do |key, val|
		merged[key] = val
	end

	hash_2.each do |key, val|
		merged[key] = val
	end

	merged
end


def censor(sent, arr)
	vowels = "aeiou"
	words = sent.split(" ")

	words.each do |word|
		if arr.include?(word.downcase)
			word.each_char do |char|
				if vowels.include?(char.downcase)
					word[char] = "*"			
				end
			end
		end
	end

	return words.join(" ")
end


def power_of_two?(num)

	current = 1
	while current < num	
		current *= 2
	end

	current == num
end


p power_of_two?(16) # => true
p power_of_two?(32) # => true
p power_of_two?(64) # => true
p power_of_two?(1) # => true
p power_of_two?(6) # => false
p power_of_two?(7) # => false
p power_of_two?(28) # => false
p power_of_two?(100) # => false