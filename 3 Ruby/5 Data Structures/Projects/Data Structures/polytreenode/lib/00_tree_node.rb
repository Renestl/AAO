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

		def add_child(child_node)
			child_node.parent = self
		end

		def remove_child(child_node)
			raise "This node is not a child" if child_node.parent != self
			child_node.parent = nil
		end
	end

end