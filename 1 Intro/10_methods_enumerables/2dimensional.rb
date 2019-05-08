# 2-Dimensional Arrays

arr = [
	["a", "b", "c"],
	["d", "e"],
	["f", "g", "h"]
]

# puts arr
# print arr
# print arr.length

# print arr[0]

# subArr = arr[1]
# print subArr[1]

# print arr[1][1]
# puts

arr.each do |subArr|
	print subArr
	puts
	subArr.each do |ele|
		puts ele
	end
end