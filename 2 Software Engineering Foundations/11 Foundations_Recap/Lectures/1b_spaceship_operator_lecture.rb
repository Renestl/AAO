# <, >, <=, >=

# a <=> b

# when a is less than b, return -1
p 3 <=> 5

# when a is greater than b, return 1
p 5 <=> 3

#  when a is equal to b, return 0
p 3 <=> 3

def compare(a, b)
	if (a <=> b) == -1
		p "a is less than b"
	elsif (a <=> b) == 1
		p "a is greater than b"
	else
		p "a is eq to b"
	end
end

compare(-3, 10)
compare(-4.5, -5)
compare(12, 12)
