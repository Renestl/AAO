# Hashes
# 	counter hash
# 	sort_by

str = "mississippi river"

count = Hash.new(0)

str.each_char do |char|
	count[char] += 1
end
# puts count

# print count
# puts
# print count.sort_by { |k, v| v}

sorted = count.sort_by { |k, v| v}
print sorted[-1]
puts