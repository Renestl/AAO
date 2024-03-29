require '../polytreenode/lib/00_tree_node.rb'

class KnightPathFinder
	attr_reader :start_pos

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

		build_move_tree
	end

	def find_path(end_pos)
		end_node = root_node.bfs(end_pos)

		trace_path_back(end_node).reverse.map(&:value)
	end
	
	private

  attr_accessor :root_node, :considered_positions

	def build_move_tree
		self.root_node = PolyTreeNode.new(start_pos)

		node_queue = [root_node]

		until node_queue.empty?
			current_node = node_queue.shift

			current_pos = current_node.value

			new_move_positions(current_pos).each do | next_pos|
				next_node = PolyTreeNode.new(next_pos)
				current_node.add_child(next_node)
				node_queue << next_node
			end
		end
	end

	def new_move_positions(pos)
		KnightPathFinder.valid_moves(pos)
			.reject { |move| @considered_positions.include?(move)}
			.each { |move| @considered_positions << move }
	end

	def trace_path_back(end_node)
		path = []

		current_node = end_node

		until current_node.nil?
			path << current_node
			current_node = current_node.parent
		end

		path
	end
end

if __FILE__ == $PROGRAM_NAME
	kpf = KnightPathFinder.new([0, 0])

	p kpf.find_path([0, 0]) # => [[0, 0]]
	p kpf.find_path([2, 1]) # => [[0, 0], [2, 1]]
	p kpf.find_path([3, 3]) # => [[0, 0], [2, 1], [3, 3]]
	p kpf.find_path([7, 6]) # => [[0, 0], [1, 2], [2, 4], [3, 6], [5, 5], [7, 6]]
	p kpf.find_path([6, 2]) # => [[0, 0], [1, 2], [2, 0], [4, 1], [6, 2]]
end