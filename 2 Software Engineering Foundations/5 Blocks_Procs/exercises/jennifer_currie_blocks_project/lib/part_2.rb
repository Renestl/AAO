def all_words_capitalized?(arr)	
	arr.all? { |word| word == word.capitalize }
end

# ------------------------

def no_valid_url?(urls)
	valid_end = [".com", ".net", ".io", ".org"]

	urls.none? do |url|
		url.end_with?(valid_end[0])
	end
end

# ------------------------

def any_passing_students?(students)

	students.any? { |student|
		student[:grades].sum / (student[:grades].length * 1.0) >= 75
	}
end
