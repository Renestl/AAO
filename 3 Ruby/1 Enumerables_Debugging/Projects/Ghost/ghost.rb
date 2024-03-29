require "set"
require './player.rb'

class GhostGame
	ALPHABET = Set.new("a".."z")
	MAX_LOSSES = 5

	attr_reader :players, :dictionary, :fragment, :losses 

	def initialize(*players)
		words = File.readlines('dictionary.txt').map(&:chomp)
		@dictionary = Set.new(words)
		@players = players
		@losses = Hash.new { |losses, player| losses[player] = 0}
	end

	def run
		welcome

		play_round until game_over?

		winner
	end

	def play_round
		@fragment = ""
		display_standings

		until round_over?
			take_turn
			next_player!
		end

		update_standings
	end

	def game_over?
		remaining_players == 1
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

		players.rotate! until losses[current_player] < MAX_LOSSES
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

	def record(player)
		count = losses[player]
		"GHOST"[0, count]
	end

	def player_eliminated
		players.slice!(players.index(previous_player))
	end

	def remaining_players
		losses.count{ |k, loss| loss < MAX_LOSSES }
	end

	def winner
		puts "#{current_player.name} wins!"
	end

	# Methods that show game prompts to user
	def welcome
		puts "GHOST\n"
		puts "  GHOST\n"
		puts "    GHOST\n"
		puts "      GHOST\n"
		puts "        GHOST\n"

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

	def record(player)
		count = losses[player]
		"GHOST"[0, count]
	end

	# Methods that show game promts to user
	def take_turn
		puts "It's #{current_player.name}'s turn!"
		letter = current_player.guess

		if !valid_play?(letter)
			current_player.alert_invalid_guess(letter)
			take_turn
		else		
			fragment << letter
			check_dictionary (fragment)
		end
	end

	def display_standings
		puts '::SCOREBOARD::'

		players.each do |player|
			puts "#{player.name}: #{record(player)}"
		end

		puts "\n"
	end

	def update_standings
		puts "\n"
		puts "#{previous_player.name} spelled #{fragment}."
		puts "#{previous_player.name} earns a letter."

		losses[previous_player] += 1

		if losses[previous_player] == MAX_LOSSES
			puts "#{previous_player.name} has been eliminated!"
			player_eliminated
		end

		display_standings
	end
end

if __FILE__ == $PROGRAM_NAME
	puts "Let's play a game of ghost!\n"

	names = []

	puts "How many players:"	
	num_players = gets.chomp.to_i

	if num_players.is_a?(Integer) && num_players < 1
		return puts "Please try again and enter a number"
	end
		
	num_players.times do |player_name|
		puts "Enter player name:"
		player_name = gets.chomp
		names << player_name
	end

	game_players = names.map { |name| Player.new(name)}

	game = GhostGame.new(*game_players)

	# game = GhostGame.new(Player.new("Rob"),Player.new("Janice"), Player.new("Rick"),Player.new("Joy"))
	game.run
end