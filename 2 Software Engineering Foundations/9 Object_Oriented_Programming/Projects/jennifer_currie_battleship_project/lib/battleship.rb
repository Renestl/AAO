require_relative "board"
require_relative "player"

class Battleship
	attr_reader :board, :player

	def initialize (n)
		@player = Player.new
		@board = Board.new(n)
		@remaining_misses = @board.size * 0.5
	end

	def start_game
		@board.place_random_ships
		puts "There are #{@board.num_ships} ships"
		puts @board.print
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
			print 'You win!'
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
			puts @remaining_misses 
		else
			puts @remaining_misses -= 1
		end
		puts @board.print
	end

end
