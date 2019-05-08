# Enumerable Methods
#		array
#			.each
#			.each_with_index
#		string
#			.each_char
#			.each_char.with_index

months = ["Jan", "Feb", "Mar", "Apr"]

# i = 0
# while i < months.length
# 	month = months[i]
# 	puts month

# 	i += 1
# end

# PREFER `{}` FOR SINGLE LINE OF CODE
# block parameter - |month|
# months.each { |month| puts month } 

# PREFER `do` FOR MULTI LINE
# months.each do |month|
# 	puts month
# 	puts "-----"
# end

# months.each_with_index do |month, idx|
# 	puts month
# 	puts idx
# 	puts "-----"
# end


sentence = "hello world"

# sentence.each_char do |char|
# 	puts char
# end

sentence.each_char.with_index do |char, idx|
	puts char
	puts idx
	puts "-----"
end