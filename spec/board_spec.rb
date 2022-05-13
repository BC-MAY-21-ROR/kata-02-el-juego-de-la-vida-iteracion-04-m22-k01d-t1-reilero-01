# frozen_string_literal: true

require_relative '../board'


describe Board do
  context('When creating an object with this class')
  before do
    @board = Board.new
    @cell = @board.return_cell_matrix[0,0]
  end
  describe '#return_cell_matrix' do
    it 'should display a matrix object ' do
        expect(@board.return_cell_matrix.class).to eql(Matrix)
    end
    it 'should not display string object' do
        expect(@board.return_cell_matrix.class).to_not eql(String)
    end
  end
  # describe '#populate' do
  #   it 'should change certain position\'s cells to true ' do
  #       expect(@alive_position.is_alive).to eql(true)
  #   end
  # end
  

  end

 
# describe Cells do
#     context('')
# end



#
