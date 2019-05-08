# Array-Giving Enumerables

arr = ["apple", "bootCAMP", "caRrot", "DaNce"]

#-------------

# new_arr = arr.map { |word| word[0].upcase + word[1..-1].downcase}

# print new_arr
# puts

#---------------

new_arr = arr.map do |ele|
	first_char = ele[0].upcase
	rest = ele[1..-1].downcase
	first_char + rest # !! last line must be element want to return
end

print new_arr
puts

#---------------

new_arr = arr.map.with_index do |ele, idx|
	first_char = ele[0].upcase
	rest = ele[1..-1].downcase
	new_word = first_char + rest
	new_word * idx
end

print new_arr
puts