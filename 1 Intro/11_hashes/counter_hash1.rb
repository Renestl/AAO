# Hashes
# 	default value nil
# 	Hash.new(default)
# 	counter hash strategy

# my_hash = {
# 	"a" => 28
# }

# !! nil = nothingness or emptyness
# puts my_hash["a"] == nil
# puts my_hash["b"] == nil

# !! for a different default value
# my_hash = Hash.new(0)

# print my_hash
# print my_hash["a"]

# my_hash = Hash.new("hello")
# my_hash ["a"] = "goodbye"
# puts my_hash

# !! hash a string
counter = Hash.new(0)

str = "bootcamp prep"
str.each_char do |char| 
	puts char
	counter[char] += 1 
	puts counter
end
