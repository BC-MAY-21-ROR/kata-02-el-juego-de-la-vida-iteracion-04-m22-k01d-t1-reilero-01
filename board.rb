# frozen_string_literal: true

require 'matrix'
require './cells'
# this class defines the grid for the game of life
class Board
  attr_reader(:rows, :columns, :cells_matrix)

  def initialize(rows, columns)
    @rows = rows
    @columns = columns
    @cells_matrix = Matrix.build(@rows, @columns) { Cells.new(self) }
  end

  def return_cells_matrix
    @cells_matrix
  end

  def populate(cell, x, y)
    cell.alive!
    @cells_matrix[x, y] = cell
  end

  def find_cell(row, column)
    @cells_matrix[row, column]
  end
end
