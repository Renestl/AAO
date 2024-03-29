class Hangman
  DICTIONARY = ["cat", "dog", "bootcamp", "pizza", "truck", "sleep", "begin", "grant", "hobbies"]

  def self.random_word
    DICTIONARY.sample
  end

  def initialize
    @secret_word = Hangman.random_word
    @guess_word = Array.new(@secret_word.length, "_")
    @attempted_chars = []
    @remaining_incorrect_guesses = 5
  end

  def guess_word
    @guess_word
  end

  def attempted_chars
    @attempted_chars
  end

  def remaining_incorrect_guesses
    @remaining_incorrect_guesses
  end

  def already_attempted?(char)
    attempted_chars.include?(char)
  end

  def get_matching_indices(char)
    indices_array = []

    @secret_word.each_char.with_index do |ele, idx|
      if ele == char
        indices_array << idx
      end
    end

    indices_array
  end

  def fill_indices(char, indices)
    indices.each do |idx|
      @guess_word[idx] = char
    end
  end

  def try_guess(char)

    if already_attempted?(char)
      puts 'that has already been attempted'
      return false
    end 

    attempted_chars << char

    matching = self.get_matching_indices(char)
    self.fill_indices(char, matching)

    
    @remaining_incorrect_guesses -= 1 if matching.empty?
    
    true
  end

  def ask_user_for_guess
    puts 'Enter a char:'
    self.try_guess(gets.chomp)
  end

  def win?
    if @guess_word.join == @secret_word
      puts "WIN"
      return true
    end
    false
  end

  def lose?
    if @remaining_incorrect_guesses == 0
      puts "LOSE"
      return true
    end
    false
  end

  def game_over?
    if self.win? || self.lose?
      puts @secret_word
      return true
    end
    false
  end
end
