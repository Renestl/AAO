class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14)

    place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each

    # map! to reassign in place
    @cups.map!.with_index do |cup, index|
      if index != 6 && index != 13
        cup = Array.new(4) {:stone}
      else
        cup = []
      end
    end
  end

  def valid_move?(start_pos)
    if !start_pos.between?(0,13)
      raise "Invalid starting cup"
    end

    if @cups[start_pos].length == 0
      raise "Starting cup is empty"
    end
  end

  def make_move(start_pos, current_player_name)
    stone_count = @cups[start_pos].length
    current_cup = start_pos + 1

    until stone_count == 0

      if current_cup == 6
        @cups[current_cup] << @cups[start_pos].pop if current_player_name == @name1
      elsif current_cup == 13
        @cups[current_cup] << @cups[start_pos].pop  if current_player_name == @name2
      else
        @cups[current_cup] << @cups[start_pos].pop
      end
    

      if current_cup == 13
        current_cup = 0
      else 
        current_cup = current_cup + 1  
      end 
      
      stone_count = @cups[start_pos].length
      
    end

    render
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end
