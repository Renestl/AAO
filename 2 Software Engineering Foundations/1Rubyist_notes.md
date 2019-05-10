* Implicit Returns

	```
	# Less preferred
	def get_avg(num_1, num_2)
			return (num_1 + num_2) / 2
	end

	# Preferred by a Rubyist
	def get_avg(num_1, num_2)
			(num_1 + num_2) / 2
	end
	```

* Omit parentheses for method calls with no arguments

* Use single line conditionals when possible

	```
	raining = true

	# Less preferred
	if raining
			puts "don't forget an umbrella!"
	end

	# Preferred by a Rubyist
	puts "don't forget an umbrella!" if raining
	```

* Use built-in methods
* Use enumerables to iterate
	- Given a problem, not all enumerables are equal. Some methods will immediately solve the problem at hand elegantly.

	```
	# Less preferred
	def all_numbers_even?(nums)
			nums.each do |num|
					return false if num % 2 != 0
			end

			true
	end

	# Preferred by a Rubyist
	def all_numbers_even?(nums)
			nums.all? { |num| num.even? }
	end
	```
