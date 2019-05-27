class Code
  POSSIBLE_PEGS = {
    "R" => :red,
    "G" => :green,
    "B" => :blue,
    "Y" => :yellow
  }

  attr_reader :pegs

  def self.valid_pegs?(char_array)
    char_array.all? do |char|
      POSSIBLE_PEGS.has_key?(char.upcase)
    end
  end

  def self.random(length)
    # random_pegs = []
    # length.times { random_pegs << POSSIBLE_PEGS.keys.sample}

    Code.new(Array.new(length) { POSSIBLE_PEGS.keys.sample })
  end

  def self.from_string(pegs)
    Code.new(pegs.split(""))
  end

  def initialize(pegs)
    if !Code.valid_pegs?(pegs)
      raise "Please enter valid peg colors."
    else
      @pegs = pegs.map(&:upcase)
    end
  end

  def [](peg_index)
    @pegs[peg_index]
  end

  def length
    @pegs.length
  end

  def num_exact_matches(guess)
    exact_matches = 0
    
    i = 0
    while i <= pegs.length - 1
      if @pegs[i] == guess[i]
        exact_matches += 1
      end
      i += 1
    end

    exact_matches
  end

end
