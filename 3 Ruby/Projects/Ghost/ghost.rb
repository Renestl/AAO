require "set"
require './player.rb'

class GhostGame
	ALPHABET = Set.new("a".."z")

	attr_reader :players, :dictionary, :fragment 

	def initialize(*players)
		words = File.readlines('dictionary.txt').map(&:chomp)
		# @dictionary = Set.new(words)
		@players = players
	end

	def play_round
		@fragment = ""
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

	def take_turn
		puts "It's #{current_player.name}'s turn!'"
		letter = current_player.guess

		if valid_play?(letter)
			puts letter
		else
			current_player.alert_invalid_guess
			take_turn
		end
	end

	def valid_play?(string)
		if ALPHABET.include?(string)
			return true
		else
			return false
		end
	end

end

# game = GhostGame.new(Player.new("Rob"),Player.new("Janice"), Player.new("Rick"),Player.new("Joy"))