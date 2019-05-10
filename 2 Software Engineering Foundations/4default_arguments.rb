# Default Arugments

# to make an argument optional => can assign a default value in the parameter list:

# Let's make num an optional parameter.
# By default, num will have the value of 1
def repeat(message, num=5)
	message * num
end

p repeat("hi") # => "hi"
p repeat("hi", 3) # => "hihihi"

# A fairly common design pattern is to set an arg to nil by default and have logic based on that scenario:

def greet(person_1, person_2=nil)
	if person_2.nil?
			p "Hey " + person_1
	else
			p "Hey " + person_1 + " and " + person_2 
	end
end

greet("Chao") # => "Hey Chao"
greet("Chao", "Arittro") # => "Hey Chao and Arittro"

# To avoid confusion, it's best practice to have optional parameters listed after the required ones. 

# Optional Hashes
# If you have a method that accepts a hash as an argument, you can omit the braces when passing in the hash:

def method(hash)
	p hash  # {"location"=>"SF", "color"=>"red", "size"=>100}
end

method({"location"=>"SF", "color"=>"red", "size"=>100})

# this also works:
method("location"=>"SF", "color"=>"red", "size"=>100)

# This can really clean things up when you have other arguments before the hash:

def modify_string(str, options)
	str.upcase! if options["upper"]
	p str * options["repeats"]
end

# less readable
modify_string("bye", {"upper"=>true, "repeats"=>3}) # => "BYEBYEBYE"

# more readable
modify_string("bye", "upper"=>true, "repeats"=>3)   # => "BYEBYEBYE"

