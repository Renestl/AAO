# array/string.index(ele) - evaluates to the index where ele is found
# array/string.include?(ele) - evaluates to a boolean indicating if ele is found

arr = ['sf', 'ny', 'la']

# puts arr.index('ny')
# puts arr.index('nj')

# puts arr.include?('ny')
# puts arr.include?('nj')

str = "hello"
puts str.include?("e")
puts str.include?("E") # case sensitive

puts str.index('ello')
puts str.index('elloz')

