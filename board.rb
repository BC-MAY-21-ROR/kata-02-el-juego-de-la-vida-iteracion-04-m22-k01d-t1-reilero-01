# frozen_string_literal: true

require 'matrix'
class Board
  ROWS = 4
  COLUMNS = 8
  def return_cell_matrix
    Matrix.build(ROWS, COLUMNS) { '.' }
  end
end
