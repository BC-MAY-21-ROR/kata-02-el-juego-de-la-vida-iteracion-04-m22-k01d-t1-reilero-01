# frozen_string_literal: true

require_relative '../board'
require_relative '../cells'

describe Board do
  context('When creating an object with this class')
  before do
    @board = Board.new
  end
  describe '#return_cell_matrix' do
    it 'should display a matrix object ' do
      expect(@board.return_cell_matrix.class).to eql(Matrix)
    end
    it 'should not display string object' do
      expect(@board.return_cell_matrix.class).to_not eql(String)
    end
  end
end

# describe Cells do
#     context('')
# end
