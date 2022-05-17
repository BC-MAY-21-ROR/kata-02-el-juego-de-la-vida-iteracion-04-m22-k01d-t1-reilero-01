# frozen_string_literal: true

require_relative '../cells'
require_relative '../board'

describe Cells do
  let(:board) { Board.new(5, 5) }
  let(:cell) { Cells.new(board) }

  it 'creates a cell' do
    expect(cell.class).to eq(Cells)
  end

  it 'it is within a board' do
    expect(cell.board).to eq(board)
  end

  it 'can turn dead' do
    cell.alive!
    expect(cell.live).to be true
  end

  it 'can come back alive' do
    cell.dead!
    expect(cell.live).to be false
  end

  it 'returns the count of live neighbours'
end
