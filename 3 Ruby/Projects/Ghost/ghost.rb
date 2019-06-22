require "set"
require './player.rb'

class GhostGame
	ALPHABET = Set.new("a".."z")

	attr_reader :players, :dictionary, :fragment 

	def initialize(*players)
		words = File.readlines('dictionary.txt').map(&:chomp)
		@dictionary = Set.new(words)
		@players = players
	end

	def play_round
		@fragment = ""

		until round_over?
			take_turn
			next_player!
		end

		puts "#{previous_player.name} loses"
	end

	# HELPER METHODS
	
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

		if !valid_play?(letter)
			current_player.alert_invalid_guess(letter)
			take_turn
		else		
			fragment << letter
			check_dictionary (fragment)
		end
	end

	def valid_play?(letter)
		return false unless ALPHABET.include?(letter)

		potential_word = fragment + letter
		dictionary.any? { |word| word.start_with?(potential_word)}
	end

	def check_dictionary(fragment)
		dictionary.include?(fragment)
	end

	def round_over?
		check_dictionary(fragment)
	end

end

# game = GhostGame.new(Player.new("Rob"),Player.new("Janice"), Player.new("Rick"),Player.new("Joy"))