require_relative '../cells'

describe Cells do
    context('this property should be')
    before do
    @cell = Cells.new
    end
    describe '#is_alive' do 
        it 'should return true or false' do
        expect(@cell.is_alive?).to eql(false).or eql(true)
        end
    end
end