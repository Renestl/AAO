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
  def initialize(pegs)
    if !Code.valid_pegs?(pegs)
      raise "Please enter valid peg colors."
    else
      @pegs = pegs.map(&:upcase)
    end
  end

  

end
