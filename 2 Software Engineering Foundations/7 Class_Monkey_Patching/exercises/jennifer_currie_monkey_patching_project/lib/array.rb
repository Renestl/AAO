# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
	def span
		# if self.length > 0
		# 	smallest = self.min
		# 	largest = self.max

		# 	return largest - smallest
		# end
		# nil

		return nil if self.empty?

		self.max - self.min
	end

	def average
		return nil if self.empty?

		if self.length > 0
			return self.sum / self.length.to_f
		end
	end

	def median		
		middle = self.length / 2
		sorted = self.sort

		return nil if self.empty?

		if self.length.odd?
			return sorted[middle]
		else
			left = middle - 1
			right = middle
			avg = (sorted[left] + sorted[right]) / 2.0
		end	
	end

	def counts 
		count = Hash.new(0)
		self.each {|ele| count[ele] += 1}
		count
	end

	def my_count(arg)
		count = 0
		self.each do |ele|
			if ele == arg
				count += 1
			end
		end
		count
	end

	def my_index(arg)
		self.each_with_index do |ele, idx|
			if ele == arg
				return idx
			end
		end
		nil
	end

	def my_uniq
		new_array = []

		self.each do |ele|
			if !new_array.include?(ele)
				new_array << ele
			end
		end

		new_array
	end

	def my_transpose
		transposed = Array.new(self.length) {Array.new()}

		self.each_with_index do |ele, idx|
			ele.each_with_index do |sub_ele, sub_idx|
				transposed[sub_idx][idx] = sub_ele
			end
		end

		transposed
	end

end
