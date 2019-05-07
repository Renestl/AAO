# ABBREVIATE SENTENCE

def abbreviate_sentence(sent)
	wordArr = sent.split(" ")
	new_words = []

	wordArr.each do |word|
		if word.length > 4
			new_word = abbreviate_word(word)
			new_words << new_word
		else
			new_words << word
		end
	end
	new_sent = new_words.join(" ")
end

def abbreviate_word(word)
	vowels = ["a", "e", "i", "o", "u"]
	no_vowels = ""

		word.each_char do |char|
			if !vowels.include?(char)
				no_vowels += char
			end		
		end
	return no_vowels
end

puts abbreviate_sentence("follow the yellow brick road") # => "fllw the yllw brck road"
# puts abbreviate_sentence("what a wonderful life")        # => "what a wndrfl life"