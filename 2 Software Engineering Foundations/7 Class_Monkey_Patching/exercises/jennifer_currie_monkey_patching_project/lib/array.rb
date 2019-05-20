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
		sorted = self.sort
		count = sorted.length
		middle = count / 2

		if count == 0
			return nil
		elsif count.odd?
			return sorted[middle.ceil]
		else
			left = middle - 1
			right = middle

			if count <= 2
				return avg = (sorted[0] + sorted[1]).to_f / 2
			end

			avg = (sorted[left].to_f + sorted[right].to_f) / 2
		end	
	end

	def counts 
		count = Hash.new(0)

		self.each {|ele| count[ele] += 1}

		count
	end



end
