# Nested Loops

# (1..3).each do |num1|
# 	puts num1

# 	(1..5).each do |num2|
# 		puts "   " + num2.to_s
# 	end
# end

(1..3).each do |num1|

	(1..5).each do |num2|
		puts num1.to_s + " " + num2.to_s
	end
end