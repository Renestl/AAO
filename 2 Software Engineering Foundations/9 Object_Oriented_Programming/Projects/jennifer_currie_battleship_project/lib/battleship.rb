require_relative "board"
require_relative "player"

class Battleship
	attr_reader :board, :player

	def initialize (n)
		@player = Player.new
		@board = Board.new(n)
		@remaining_misses = (@board.size * 0.5).to_i
	end

	def start_game
		@board.place_random_ships
		puts "There are #{@board.num_ships} ships"
		print @board.print
	end

	def lose?
		if @remaining_misses <= 0
			puts "You lose"
			return true
		end
		false
	end

	def win?
		if @board.num_ships == 0
			puts 'You win!'
			return true
		end
		false
	end

	def game_over?
		return true if win? || lose?
		false
	end
	
	def turn
		if @board.attack(@player.get_move)
			puts "You have #{@remaining_misses} remaining misses" 
		else
			puts "You have #{@remaining_misses -= 1} remaining misses" 
		end
		print @board.print
	end

end
