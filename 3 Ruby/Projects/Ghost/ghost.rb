require "set"
require './player.rb'

class GhostGame
attr_reader :players, :dictionary 

	def initialize(*players)
		words = File.readlines('dictionary.txt').map(&:chomp)
		@dictionary = Set.new(words)
		@players = players		
	end

	def play_round

	end

	def current_player
		players.first
	end 

	def previous_player
		players.last
	end

	def next_player!
		players.rotate!
	end

	def take_turn(player)

	end

	def valid_play?(string)

	end

end