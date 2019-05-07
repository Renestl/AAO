# FORMAT NAME

# Hint: use str.upcase and str.downcase
# "abc".upcase # => "ABC"

def format_name(str)
	names = str.split(" ")
	formatted = ""

	names.each do |name|
		formatted += name[0].upcase + name[1..-1].downcase + " "
	end

	return formatted

	# name.each do |word|
	# 	word.each_char.with_index do |char, idx|
	# 		if idx == 0
	# 			upLetter = char.upcase
	# 			formatted << upLetter
	# 		else
	# 			downLetter = char.downcase
	# 			formatted << downLetter	
	# 		end
	# 	end
	# end
	# return formatted.join("")
	# print formatted
end

# puts format_name("chase WILSON") # => "Chase Wilson"
puts format_name("brian CrAwFoRd scoTT") # => "Brian Crawford Scott"