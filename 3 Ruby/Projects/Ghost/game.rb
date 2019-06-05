require './player.rb'

class Game
attr_reader :players, :dictionary 

	def initialize(*players)
		words = File.readlines('dictionary.txt').map(&:chomp)
		@players = players
		@dictionary = Set.new(words)
	end

	def play_round

	end

	def current_player

	end 

	def previous_player

	end

	def next_player!

	end

	def take_turn(player)

	end

	def valid_play?(string)

	end

end