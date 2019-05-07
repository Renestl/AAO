def rotate_array(arr, num)

	newArr = arr
	counter = 0

	while counter < num
		popped = arr.pop
		newArr = arr.unshift(popped)
		
		counter += 1
	end

	return newArr
end

print rotate_array([ "Matt", "Danny", "Mashu", "Matthias" ], 1) # => [ "Matthias", "Matt", "Danny", "Mashu" ]
puts

print rotate_array([ "a", "b", "c", "d" ], 2) # => [ "c", "d", "a", "b" ]
puts


# teacher solution

# def rotate_array(arr, num)
#   num.times do
#     ele = arr.pop
#     arr.unshift(ele)
#   end

#   return arr
# end