def array_translate(array)
	word = []
	multiplyBy = []
	translated = []

	array.each_with_index do |ele, idx|
		if idx % 2 == 0
			word << ele 		
		end

		if idx % 2 != 0
			multiplyBy << ele 		
		end
	end
	
	word.each_with_index do |word, idx1|
		multiplyBy.each_with_index do |num, idx2|
			if idx1 == idx2
				translated << word * num
			end
		end
	end

	return translated.join("")
end

print array_translate(["Cat", 2, "Dog", 3, "Mouse", 1]); # => "CatCatDogDogDogMouse"
puts

print array_translate(["red", 3, "blue", 1]); # => "redredredblue"
puts


# TEACHER SOLUTION

# def array_translate(array)
#   str = ""

#   i = 0
#   while i < array.length
#     ele = array[i]
#     num = array[i + 1]
#     num.times { str += ele }

#     i += 2
#   end

#   return str
# end