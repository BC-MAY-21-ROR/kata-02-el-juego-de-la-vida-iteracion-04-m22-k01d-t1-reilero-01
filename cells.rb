# frozen_string_literal: true

# frozen_string_literal: true"
# this class defines the cells inside the board
class Cells
  attr_accessor(:board, :live)

  def initialize(board)
    @board = board
    @live = false
  end

  def alive!
    @live = true
  end

  def dead!
    @live = false
  end
end
