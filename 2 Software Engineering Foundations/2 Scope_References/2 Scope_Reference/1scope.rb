# SCOPE

# Scope describes the location in your program where a variable is accessible.

# --------- #

# Methods and Local Scope

# Lexical scope describes how a variable name evaluates in nested code.

# message = "hi"

# def say_hello
#     p message   # NameError: undefined local variable
# end

# say_hello

# --------- #

# Global Variables

# To define variables in the global scope, we must use special syntax. 

$message = "hello globe"

def say_hello
    p $message
end

say_hello # => "hello globe"

# ---------

def say_hello
	$message = "hello globe"
end

say_hello
p $message # => "hello globe"

# Ruby automatically defines some global variables for us to reference. For example, $PROGRAM_NAME will be a string describing the name of our program. Later in the course we'll use other global names like $stdin and $stdout handle user input and output.

# --------- #

# Constants

# A constant is denoted syntactically by beginning the name with a capital letter. By convention we like to make the entire name capital to emphasize it being a special constant.

# A common point of confusion is that while you cannot reassign a constant, you can still mutate that constant name without warning:

FOOD = "pho"
FOOD[0] = "P"
p FOOD # => "Pho

# Note that above we did not reassign to the FOOD name, instead we assign to an index of the FOOD string. The key takeaway is that constants can still mutate or be "changed", they just can't be reassigned.

# We can do VARIABLE or $variable to ensure global scoping:

	FOOD = "pho"
	$drink = "ice coffee"
	
	def my_favorite
			p FOOD
			p $drink
	end
	
	my_favorite

# --------- #

# What does not have it's own scope?

# Blocks don't have their own scope, they are really a part of the containing method's scope.

# Other structures like conditionals or while loops also don't have their own scope, they are really part of the containing scope.

	