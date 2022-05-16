require 'matrix'
# this class defines the grid for the game of life
class Board

    attr_reader(:rows, :columns)
    def initialize(rows,columns)
      @rows = rows
      @columns = columns
  
    end
    def cells_matrix
      Array.new(columns,Array.new(rows))
    end
  
  end
