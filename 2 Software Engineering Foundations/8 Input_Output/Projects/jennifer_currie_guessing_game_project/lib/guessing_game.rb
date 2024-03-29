class GuessingGame
	def initialize(min_num, max_num)
		@secret_num = rand(min_num...max_num)
		@num_attempts = 0
		@game_over = false
	end

	def num_attempts
		@num_attempts
	end

	def game_over?
		@game_over
	end

	def check_num(guess)
		@num_attempts += 1

		if guess == @secret_num
			@game_over = true
			puts 'you win'
		elsif guess > @secret_num
			puts "too big"
		else
			puts 'too small'		
		end
	end

	def ask_user
		puts 'enter a number'
		num = gets.chomp.to_i
		self.check_num(num)
	end
end
