# Write a method o_words that takes in a sentence string and returns an array of the words that contain an "o". Use select in your solution!

def o_words(sentence)

	words = sentence.split(" ")
	contain_O = []

	words.select do |word|
		if word.include?("o")
			contain_O << word
		end
	end

end

print o_words("How did you do that?") #=> ["How", "you", "do"]
puts