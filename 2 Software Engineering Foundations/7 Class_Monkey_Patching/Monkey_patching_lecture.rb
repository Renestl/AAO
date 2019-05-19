# Monkey Patching - Adding additional methods to an existing class

# Ruby Types are really classes: Integer, String, Array, Hash, etc..

# class String
# 	def upcase?
# 		# p self
# 		self.upcase == self
# 	end
# end

# p "hello".upcase? #false
# p "HELLO".upcase? #true

# class Integer
# 	def prime?
# 		return false if self < 2

# 		(2...self).each do |factor|
# 			if self % factor == 0
# 				return false
# 			end
# 		end

# 		return true
# 	end
# end

# p 7.prime? #true
# p 11.prime? #true
# p 12.prime? #false

class Array
	def has_zero?
		self.include?(0)
	end	
end

p [4,2,3, "hello", 0].has_zero? #true
p [4,2,3, "hello"].has_zero? #false