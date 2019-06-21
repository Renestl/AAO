class Player
	attr_reader :name

	def initialize(name)
		@name = name
	end

	def guess
		puts "Enter a letter:"
		letter = gets.chomp.downcase
	end

	def alert_invalid_guess
		puts "This is an invalid guess"
		puts "Guess must be a letter of the alphabet"
	end

end