# frozen_string_literal: true
require_relative '../board'


describe Board do

let(:board) {Board.new(5,5)}
it 'initialize a board with predefined rows and columns' do
expect(board.cells_matrix.class).to eq(Array)
end

it 'returns a cells position'


end