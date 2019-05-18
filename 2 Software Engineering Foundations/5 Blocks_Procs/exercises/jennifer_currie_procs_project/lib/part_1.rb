def my_map(arr, &prc)
	new_array = []

	arr.each { |ele| new_array << prc.call(ele)}

	new_array
end

# ---------------------

def my_select(arr, &prc)
	new_array = []

	# arr.each do |ele| 
	# 	if prc.call(ele) == true
	# 		new_array << ele			
	# 	end
	# end

	arr.each { |ele| new_array << ele if prc.call(ele) == true }

	new_array
end

# ---------------------

def my_count(arr, &prc)
	count = 0

	arr.each { |ele| count += 1 if prc.call(ele) == true}

	count
end

# ---------------------

def my_any?(arr, &prc)

	arr.each do |ele| 
		if prc.call(ele) == true 
			return true 
		end
	end

	false
end

# ---------------------

def my_all?(arr, &prc)

	arr.each do |ele| 
		if prc.call(ele) == false 
			return false 
		end
	end

	true
end

# ---------------------

def my_none?(arr, &prc)
	
	arr.each do |ele| 
		if prc.call(ele) == true 
			return false 
		end
	end

	true
end
