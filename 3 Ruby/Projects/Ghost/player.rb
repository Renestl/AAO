class Player
	attr_reader :name

	def initialize(name)
		@name = name
	end

	def guess
		puts "Enter a letter"
		letter = gets.chomp.downcase
	end

	def alert_invalid_guess

	end

end