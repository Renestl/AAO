# Hash Methods
# .length
# .has_key?(k)
# .has_value?(v)
# .keys
# .values

dog = {
	"name" => "Fido",
	"color" => "black",
	"age" => 3,
	"isHungry" => true,
	"enemies" => ["squirrel"]
}

# puts dog
# puts dog.length

# dog["name"] = "Spot"
# puts dog

# !!Add to array after the fact
# dog["location"] = "MO"
# puts dog

# print dog["enemies"] << "mailman"
# puts
# puts dog

# print dog.has_key?("color") #true
# print dog.has_key?("location") #false
# print dog.has_key?("Color") #false

# print dog.has_value?("black") #true
# print dog.has_value?(false) #false

# !!Get an array of all the keys or values
# print dog.keys
# print dog.values

# print dog.keys[1] #index into array

