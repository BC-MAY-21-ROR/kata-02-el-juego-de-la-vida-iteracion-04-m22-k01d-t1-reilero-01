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

  def populate(cell, rows, columns)
    cell.alive!
    @cells_matrix[rows, columns] = cell
  end

  def find_cell(cell)
    @cells_matrix.find_index(cell)
  end

  def neighbours(cell)
    x = cells_matrix.find_cell(cell)[0]
    y = cells_matrix.find_cell(cell)[1]
    neighbours = []
    neighbours.push(@board.find_cell[x - 1, y - 1])
    neighbours.push(@board.find_cell[x - 1, y])
    neighbours.push(@board.find_cell[x - 1, y + 1])

    neighbours.push(@board.find_cell[x, y - 1])
    neighbours.push(@board.find_cell[x, y + 1])

    neighbours.push(@board.find_cell[x + 1, y - 1])
    neighbours.push(@board.find_cell[x + 1, y])
    neighbours.push(@board.find_cell[x + 1, y + 1])

    neighbours
  end
end

obj = Board.new(4, 8)
puts obj.inspect
