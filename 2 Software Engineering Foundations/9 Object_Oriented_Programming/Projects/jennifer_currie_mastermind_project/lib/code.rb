class Code
  POSSIBLE_PEGS = {
    "R" => :red,
    "G" => :green,
    "B" => :blue,
    "Y" => :yellow
  }

  def self.valid_pegs?(char_array)
    char_array.all? do |char|
      POSSIBLE_PEGS.include?(char.upcase)
    end
  end

  

end
