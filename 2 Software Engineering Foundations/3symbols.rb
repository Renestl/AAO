# Symbols

# Ruby has an additional data type that is similar to Strings, called Symbols. 

# demote symbol by using a colon (:)

str = "hello"   # the string 
sym = :hello    # the symbol

p str.length    # => 5
p sym.length    # => 5

p str[1]        # => "e"
p sym[1]        # => "e"

p str == sym    # => false
# a string is different from a symbol!

# Symbols are Immutable
str = "hello"
sym = :hello

str[0] = "x"
# sym[0] = "x"

p str   # => "xello"
p sym   # => :hello (error)

# The utility of a symbol comes from the fact that it can never change over time. The technical implication of this is that a symbol only needs to be "created" once. There is no need to create "copies" of symbol because we can be certain that it will not change over the course of our programs.

# Symbols as hash keys

# We'll see the preference of using of symbols in a few places in Ruby. For now, one common way to a symbol is as the key in a hash:

my_bootcamp = { 
	:name=>"App Academy", 
	:color=>"red", 
	:locations=>["NY", "SF", "ONLINE"] 
}

p my_bootcamp           # => {:name=>"App Academy", :color=>"red", :locations=>["NY", "SF", "ONLINE"]}
p my_bootcamp[:color]   #=> "red

# When initializing a hash with symbol keys, Ruby offers a shortcut. We can drop the rocket (=>) and move the colon (:) to the right of the symbol:

my_bootcamp = { name:"App Academy", color:"red", locations:["NY", "SF", "ONLINE"] }
p my_bootcamp           # => {:name=>"App Academy", :color=>"red", :locations=>["NY", "SF", "ONLINE"]}
p my_bootcamp[:color]   #=> "red

# This shortcut is only allowed when initializing the symbols in the hash. When getting a value from the hash after initialization, we must always put the colon on the left like normal. hash[:key] is the correct syntax. Writing hash[key:] is invalid.