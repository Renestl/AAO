# Pig latin translation uses the following rules:
# - for words that start with a vowel, add 'yay' to the end
# - for words that start with a nonvowel, move all letters before the first vowel to the end of the word and add 'ay'

def pig_latin_word(word)
	vowels = "aeiou"
	
	# if word starts with a vowel, then add yay
	if vowels.include?(word[0])
		return word + "yay"
	end

	word.each_char.with_index do |char, idx|
		if vowels.include?(char)
			before_vowel = word[0...idx]
			after_vowel = word[idx..-1]
			return after_vowel + before_vowel + "ay"
		end
	end

	# if !vowels.include?(splitted[0])
	# 	first = word[0]
	# 	last = word[1..-1]
	# 	newWord = last + first + "yay"
	# else
	# 	newWord = word + "yay"
	# end	
end

# puts pig_latin_word("apple")   # => "appleyay"
# puts pig_latin_word("eat")     # => "eatyay"
puts pig_latin_word("banana")  # => "ananabay"
puts pig_latin_word("trash")   # => "ashtray"