require_relative 'tic_tac_toe'

class TicTacToeNode
  attr_reader :board, :next_mover_mark, :prev_move_pos
  
  def initialize(board, next_mover_mark, prev_move_pos = nil)
    @board = board
    @next_mover_mark = next_mover_mark
    @prev_move_pos = prev_move_pos
  end

  def losing_node?(evaluator)
    if self.board.over?
      return false if self.board.winner == nil
      return true if self.board.winner != evaluator
      return false
    end

    if self.next_mover_mark == evaluator
      children.all? { |child| child.losing_node?(evaluator) }
    else
      children.any? { |child| child.losing_node?(evaluator) }
    end
  end

  def winning_node?(evaluator)
    if self.board.over?
      return false if self.board.winner == nil
      return true if self.board.winner == evaluator
      return false
    end

    if self.next_mover_mark == evaluator
      children.any? { |child| child.winning_node?(evaluator)}
    else
      children.all? { |child| child.winning_node?(evaluator)}
    end
  end

  # This method generates an array of all moves that can be made after
  # the current move.
  def children
    potential_states = []

    (0...self.board.rows.length).each do |row|
      (0...3).each do |col|
        pos = [row, col]

        if self.board.empty?(pos)
          potential_board = self.board.dup
          potential_board[pos] = self.next_mover_mark
          next_mover_mark = ((self.next_mover_mark == :x) ? :o : :x)

          node = TicTacToeNode.new(potential_board, next_mover_mark, pos)
          potential_states << node
        end
      end
    end
    
    potential_states
  end
end
