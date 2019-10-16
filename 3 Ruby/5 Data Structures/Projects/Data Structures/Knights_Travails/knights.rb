require '../polytreenode/lib/00_tree_node.rb'

class KnightPathFinder
	POSITIONS = [[-1,-1], [-1, 0], [-1, 1], [0, -1], [0, 1], [1, -1], [1, 0], [1, 1]]

	def self.valid_moves(pos)
		valid_moves = []

		pos_x, pos_y = pos

		POSITIONS.map do |(dx, dy)|
			new_pos = [pos_x + dx, pos_y + dy]

			if new_pos.all? { |position| position.between?(0, 7)}
				valid_moves << new_pos
			end
		end

		valid_moves
	end

	def initialize(start_pos)
		@start_pos = start_pos
		@considered_positions = [start_pos]
	end
	
	def new_move_positions(pos)
		KnightPathFinder.valid_moves(pos)
			.reject { |move| @considered_positions.include?(move)}
			.each { |move| @considered_positions << move }
	end

end
