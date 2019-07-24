def upcase(str)
	return str.upcase if str.length <= 1
	puts str
	p str[0].upcase + upcase(str[1..-1])
end

def iterative_upcase(str)
	str.chars.inject("") do |upcased_str, char|
		upcased_str << char.upcase
	end
end

def reverse(str)
	return str if str.length <= 1
	reverse(str[1..-1]) + str[0]
end

def quick_sort(arr)
	return arr if arr.length <= 1
	pivot_arr = [arr.first]
	left_side = arr[1..-1].select { |el| el < arr.first}
	right_side = arr[1..-1].select { |el| el >= arr.first}

	quick_sort(left_side) + pivot_arr + quick_sort(right_side)
end

# arr = [3,5,6,7,1,2,3].shuffle
# arr2 = (1..1000).to_a.shuffle

