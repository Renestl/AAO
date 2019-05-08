# Nested Loops

arr = ["a", "b", "c", "d"]

# below we iterate through all possible w/ duplicates
# arr.each do |ele1|
# 	arr.each do |ele2|
# 		puts ele1 + ele2
# 	end
# end


# below we iterate through only unique pairs

arr.each_with_index do |ele1, idx1|
	arr.each_with_index do |ele2, idx2|
		if idx2 >  idx1
			puts ele1 + ele2
			puts idx1.to_s + " " + idx2.to_s
			puts "-------------"
		end
	end
end