# Now let's write a Queue class. We will need the following instance methods: enqueue(el), dequeue, and peek.

# Test your code to ensure it follows the principle of FIFO.

class Queue
	def initialize
		@queue = []
	end

	def enqueue(el)
		@queue << el
	end

	def dequeue
		@queue.shift
	end

	def peek
		@queue.first
	end
end