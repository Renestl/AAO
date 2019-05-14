def hipsterfy(word)
	vowel = "aeiou"

	i = word.length - 1
	while i >= 0
		if vowel.include?(word[i])
			return word[0...i] + word[i+1..-1]
		end

		i -=1
	end

	return word
end

def vowel_counts(str)
	vowel = "aeiou"
	counts = Hash.new(0)

	str.each_char do |char|
		if vowel.include?(char.downcase)
			counts[char.downcase] += 1
		end
	end
	return counts
end

def caesar_cipher(msg, n)
	alpha = ("a".."z").to_a
	cipher = ""

	msg.each_char do |char|
		if !alpha.include?(char)
			cipher += char
		else
			old_index = alpha.index(char)
			new_index = old_index + n
			cipher += alpha[new_index % 26].to_s
		end
	end
	
	cipher
end

p caesar_cipher("apple", 1) # => "bqqmf"
p caesar_cipher("apple", 2) # => "crrng"
p caesar_cipher("hello", 5) # => "mjqqt"
p caesar_cipher("zebra", 4) # => "difve"
p caesar_cipher("whoa", 26) # => "whoa"
p caesar_cipher("whoa", 52) # => "whoa"