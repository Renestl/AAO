# Hash enumerables
# .each
# .each_key
# .each_value

pizza = {
	"style" => "New York",
	"slices" => 8,
	"diameter" => "15 inches",
	"toppings" => ["mushrooms", "green peppers"],
	"is_tasty" => true
}

# puts pizza

# pizza.each do |key, value|
# 	puts key
# 	puts value
# 	puts "------"
# end

# pizza.each_key do |k|
# 	puts k
# end

pizza.each_value do |val|
	puts val
end