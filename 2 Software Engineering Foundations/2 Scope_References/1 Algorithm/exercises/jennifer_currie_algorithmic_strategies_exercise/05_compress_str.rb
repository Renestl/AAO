# Write a method, compress_str(str), that accepts a string as an arg.
# The method should return a new str where streaks of consecutive characters are compressed.
# For example "aaabbc" is compressed to "3a2bc".

def compress_str(str)

	compressed = ""

	i = 0
	while i < str.length
		char = str[i]

		count = 0
		while char == str[i]
			count += 1

			i +=1
		end

		if count > 1		
			compressed += count.to_s + char
		else
			compressed += char
		end
	end
	
	return compressed
end


	# chars = str.split("")
	# new_str = []
	# count = 0

	# (0..chars.length - 1).each do |i|
	# 	# if chars[i] == chars[i + 1]
	# 	# 	count += 1
	# 	# 	p count
	# 	if !chars[i] == chars[i + 1]
	# 		new_str << chars[i]
	# 		count = 0
	# 		p new_str
	# 		# p count
	# 	end
	# end

	# # chars.each.with_index do |char, idx|
	# # 	if char
	# # end
# end

p compress_str("aaabbc")        # => "3a2bc"
p compress_str("xxyyyyzz")      # => "2x4y2z"
p compress_str("qqqqq")         # => "5q"
p compress_str("mississippi")   # => "mi2si2si2pi"
