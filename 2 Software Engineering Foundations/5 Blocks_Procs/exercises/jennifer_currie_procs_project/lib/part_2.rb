def reverser(str, &prc)
	reversed = ""

	i = str.length - 1
	while i >= 0
		reversed += str[i]

		i -= 1
	end

	prc.call(reversed)
end

## !! Teacher Solution

# def reverser(str, &prc)
# 	prc.call(str.reverse)
# end

# ------------------------

def word_changer(str, &prc)
	sentence = ""
	words = str.split(" ")

	sentence = words.map { |word| prc.call(word) }

	sentence.join(" ")
end

# ------------------------

def greater_proc_value(num, prc_1, prc_2)
	if prc_1.call(num) > prc_2.call(num)
		prc_1.call(num)
	else
		prc_2.call(num)
	end
end

# ------------------------

def and_selector(arr, prc_1, prc_2)
	new_array = []

	arr.each do |ele|
		if prc_1.call(ele) && prc_2.call(ele)
			new_array << ele
		end
	end

	new_array
end

# ------------------------

def alternating_mapper(arr, prc_1, prc_2)
	altered = []

	arr.each_with_index do |ele, idx|
		if idx.even?
			altered << prc_1.call(ele)
		else
			altered << prc_2.call(ele)
		end
	end

	altered
end
