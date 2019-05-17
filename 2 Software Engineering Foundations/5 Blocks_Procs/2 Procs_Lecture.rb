array = [1, 2, 3]

# p array.map { |num| num * 2}

# my_block = { |num| num * 2}

# proc is a wrapper around a block that turns a block into an object that can be manipulated

# my_block = Proc.new { |num| num * 2}

# # p my_block

# p my_block.call(3)

# ------------------

# def add_and_proc(num_1, num_2, prc)
# 	sum = num_1 + num_2
# 	prc.call(sum)
# end

# doubler = Proc.new { |n| 2 * n}
# p add_and_proc(2, 3, doubler)

# doubler = Proc.new { |n| -1 * n}
# p add_and_proc(6, 3, doubler)

# ------------------

# refactor using ruby shortcuts

# passing in block
def add_and_proc(num_1, num_2, &prc)
	# p prc
	sum = num_1 + num_2
	prc.call(sum)
end

p add_and_proc(2, 3) { |n| 2 * n}

# passing in proc

#& parameter will automatically convert a block into a proc oject
def add_and_proc(num_1, num_2, &prc)
	# p prc
	sum = num_1 + num_2
	prc.call(sum)
end

negate = Proc.new { |n| -1 * n}
# $arg will convert the proc into a block
p add_and_proc(2, 3, &negate)



#----------------------

# p [1,2,3].map { |num| num * 2}

def my_map(arr, &prc)
	# p arr
	# p prc
	new_arr = []

	arr.each { |ele| new_arr << prc.call(ele) }

	new_arr
end

p my_map([1,2,3]) {|num| num * 2 }