class Room
	def initialize(capacity)
		@capacity = capacity
		@occupants = []
	end

	def capacity
		@capacity
	end
	
	def occupants
		@occupants
	end

	def full?
		until occupants.length == capacity
			return false
		end
		
		true
	end

	def available_space
		return capacity - occupants.length
	end

	def add_occupant(person)
		if self.full?
			return false
		else
			self.occupants << person
			return true
		end
	end
end
