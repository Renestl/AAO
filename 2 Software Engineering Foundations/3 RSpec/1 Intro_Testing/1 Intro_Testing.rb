# TDD workflow with `prime`?

# Write a method `prime?(n)` that takes in a number and returns a
# boolean indicating whether or not the number is a prime.
# A prime number is a number only divisible by two numbers, 1 and itself.

def prime?(num)
	return false if num < 2
	
	(2...num).each do |i|
		return false if num % i == 0
	end
	true
end

# return false if the number is not prime
p prime?(6) # => false
p prime?(8) # => false
p prime?(9) # => false

# return true if the number is prime
p prime?(2)   # => true
p prime?(7)   # => true
p prime?(11)  # => true

# return false if the number is less than 2, since 2 is the smallest prime
p prime?(1) # => false
p prime?(0) # => false
p prime?(-42) # => false