def palindrome?(str)
	str.each_char.with_index do |char, i|
		if str[i] != str[-i - 1]
			return false
		end
	end

	true

	# chars = str.split("")
	# new_chars = []

	# i = chars.length - 1
	# while i >= 0
	# 	new_chars  << chars[i]
	# 	i -= 1
	# end	

	# backwards = new_chars.join("")
	# str == backwards
end


def substrings(str)
	subs = []

	(0...str.length).each do |start_idx|
		(start_idx...str.length).each do |end_idx|
			subs << str[start_idx..end_idx]
		end
	end

	subs
end

def palindrome_substrings(str)
	substrings(str).select { |substring| palindrome?(substring) && substring.length > 1}
end