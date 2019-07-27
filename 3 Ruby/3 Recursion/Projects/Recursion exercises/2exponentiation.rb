# Exponentiation

# Write two versions of exponent that use two different recursions:

# ```
# # this is math, not Ruby methods.

# # recursion 1
# exp(b, 0) = 1
# exp(b, n) = b * exp(b, n - 1)

# # recursion 2
# exp(b, 0) = 1
# exp(b, 1) = b
# exp(b, n) = exp(b, n / 2) ** 2             [for even n]
# exp(b, n) = b * (exp(b, (n - 1) / 2) ** 2) [for odd n]
# ```

def exponent1(base, power)
	return 1 if power == 0
	base * exponent1(base, power - 1)
end

# Test Cases
p exponent1(0,0) # 1
p exponent1(1,2) # 1
p exponent1(2,1) # 2
p exponent1(4,3) # 64
p exponent2(4,4) # 1024


def exponent2(base, power)
	return 1 if power == 0
	return base if power == 1

	base * (exponent1(base, (power / 2).floor) ** 2)

end

# Test Cases
p exponent2(0,0) # 1
p exponent2(1,2) # 1
p exponent2(2,1) # 2
p exponent2(4,3) # 64
p exponent2(4,4) # 1024
