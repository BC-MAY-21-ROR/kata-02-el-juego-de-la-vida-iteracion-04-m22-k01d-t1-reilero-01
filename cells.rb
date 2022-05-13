# frozen_string_literal: true

# this class defines the cells inside the board
class Cells
    attr_reader :state
    def initialize
        @state = false
    end
    def is_alive?
     @state
    end 
end
