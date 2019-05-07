foods = ['pizza', 'sushi', 'burgers', 'fries', 'ramen'];

# i = 0

# while i < foods.length
# 	puts foods[i]

# 	i += 1
# end

def print_array(arr)
	i = 0

	while i < arr.length
		puts arr[i]

		i += 1
	end
end

print_array(['one', 'two', 'three'])