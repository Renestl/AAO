class PolyTreeNode
	attr_reader :value, :parent, :children

	def initialize(value)
		@value = value
		@parent = nil
		@children = []
	end

	def parent=(node)
		if node.nil?
			@parent = nil
		else
			if self.parent
				self.parent.children.reject! { |child| child == self }
			end

			@parent = node
			node.children << self unless node.children.include?(self)
		end	
	end

	def add_child(child_node)
		child_node.parent = self
	end

	def remove_child(child_node)
		raise "This node is not a child" if child_node.parent != self
		child_node.parent = nil
	end

	def dfs(target_value)
		return self if self.value == target_value

		children.each do |child|
			result = child.dfs(target_value)
			return result if result
		end

		nil
	end

	def bfs(target_value)
		bfs_queue = []
		bfs_queue << self

		until bfs_queue.empty?
			first_node = bfs_queue.shift

			return first_node if first_node.value == target_value

			bfs_queue.concat(first_node.children)
		end
	end
end