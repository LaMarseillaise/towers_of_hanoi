require "spec_helper"

describe TowersOfHanoi::Move do
  let(:move)   { TowersOfHanoi::Move.new(origin: 1, destination: 2) }
  let(:invalid){ TowersOfHanoi::Move.new(origin: 1, destination: 2) }
  let(:board) { TowersOfHanoi::Board.new }

  describe "#make" do
    it "makes a valid move" do
      move.make(board)
      expect(board.tower(1).top.width).to eq 2
      expect(board.tower(2).top.width).to eq 1
    end

    it "does not make an invalid move" do
      move.make(board)
      invalid.make(board)
      expect(board.tower(1).top.width).to eq 2
      expect(board.tower(2).top.width).to eq 1
    end
  end
end
