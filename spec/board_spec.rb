# frozen_string_literal: true

require_relative '../board'
require_relative '../cells'
describe Board do
  let(:board) { Board.new(5, 5) }
  let(:cell) { Cells.new(board) }

  it 'initialize a board with predefined rows and columns' do
    expect(board.return_cells_matrix.class).to eq(Matrix)
  end

  it 'returns a position\'s cell' do
    board.populate(cell, 1, 1)
    expect(board.find_cell(1, 1)).to eq(cell)
  end
end
