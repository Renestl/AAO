class Board
	attr_reader :size

	def initialize(n)
		@grid = Array.new(n) {Array.new(n, :N)}
		@size = n * n
	end

	def [](board_position)
		row = board_position[0]
		col = board_position[1]

		@grid[row][col]
	end
	

end
