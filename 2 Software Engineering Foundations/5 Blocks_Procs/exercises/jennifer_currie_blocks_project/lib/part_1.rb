def select_even_nums(arr)
	arr.select(&:even?)
end

# -----------------------

def reject_puppies(arr)
	arr.reject { |hash| hash["age"] <= 2}
end

# -----------------------

def count_positive_subarrays(array)
	array.count { |subarray| subarray.sum > 0}
end

# -----------------------

def aba_translate(str)
	vowels = "aeiou"
	translated = ""

	str.each_char do |char|
		if vowels.include?(char)
			translated += char + "b" + char
		else
			translated += char
		end
	end
	translated
end

# -----------------------

def aba_array(array)
	array.map { |word| aba_translate(word) }
end
