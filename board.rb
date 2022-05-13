require 'matrix'
# this class defines the grid for the game of life
class Board
    ROWS=4
    COLUMNS=8
    attr_reader(:cells_matrix)
    def initialize 
    @cells_matrix = Matrix.build(ROWS,COLUMNS) {false}
    end 
    def return_cell_matrix
        @cells_matrix
    end 
end

