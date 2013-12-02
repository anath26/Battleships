require 'board'
require 'player'

describe 'board' do
  context 'register_shot' do
    let(:board) {Board.new("Nisar")}
    it 'should initialize a Board object' do
      expect(board).to be_a_kind_of(Board)
    end

    it 'should return an error if invalid coordinates provided' do
      expect(board.register_shot "Q12").to eq("Invalid coordinates!")
    end

    it 'should take grid refs and convert to [row,col]' do
      expect(board.register_shot "A1").to eq '0 0'
      expect(board.register_shot "D6").to eq '5 3'
      expect(board.register_shot "J3").to eq '2 9'
      expect(board.register_shot "C10").to eq '9 2'
    end
  end
end