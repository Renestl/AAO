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
    raise "Invalid starting cup" if !start_pos.between?(0,13)
    raise "Starting cup is empty" if @cups[start_pos].length == 0
  end

  def make_move(start_pos, current_player_name)
    stone_count = @cups[start_pos].length
    
    current_cup = start_pos

    # distributes stones
    until stone_count == 0
      current_cup = current_cup + 1
      current_cup = 0 if current_cup > 13

      # empties cup and puts stones in correct cups
      if current_cup == 6
        @cups[current_cup] << @cups[start_pos].pop if current_player_name == @name1
      elsif current_cup == 13
        @cups[current_cup] << @cups[start_pos].pop  if current_player_name == @name2
      else
        @cups[current_cup] << @cups[start_pos].pop
      end
      
      stone_count = @cups[start_pos].length  
    end
    
    render
    next_turn(current_cup)    
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx

    if ending_cup_idx == 6 || ending_cup_idx == 13
      # ended in point cup, prompt current player for next starting cup
      :prompt
    elsif @cups[ending_cup_idx].count == 1
      # end on empty cup, switch players
      :switch
    else
      # ended on cup with stones, player continues from current cup
      ending_cup_idx
    end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    @cups[0..5].all? { |cup| cup.empty? } || @cups[7..12].all? { |cup| cup.empty? }
  end

  def winner
    player1_stone_count = @cups[6].count
    player2_stone_count = @cups[13].count

    if  player1_stone_count == player2_stone_count
      :draw 
    else
      player1_stone_count > player2_stone_count ? @name1 : @name2
    end
  end
end
