class Board
	attr_reader :size

	def initialize(n)
		@grid = Array.new(n) {Array.new(n, :N)}
		@size = n * n
	end

	def [](board_position)
		row, col = board_position

		@grid[row][col]
	end

	def []=(position, value)
		row, col = position
		@grid[row][col] = value
	end

	def num_ships
		@grid.flatten.count(:S)
	end

	def attack(position)
		if self[position] == :S
			self[position] = :H
			puts 'you sunk my battleship!'
			return true
		else
			self[position] = :X
			return false
		end
	end
end
