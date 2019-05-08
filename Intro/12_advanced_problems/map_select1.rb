# Array-Giving Enumerables
# 	map
# 	select

arr = ["a","b","c","d"]

# new_arr = []
# arr.each { |ele| new_arr << ele.upcase + "!"}
# print new_arr

# !! MAP
# new_arr = arr.map { |ele| ele.upcase + "!"}
# print new_arr
# puts

# !! SELECT
nums = [1,2,3,4,5,6]

# evens = []
# nums.each do |num|
# 	if num %2 == 0
# 		evens << num
# 	end
# end
# print evens
# puts

evens = nums.select { |num| num %2 == 0 }
print evens
puts