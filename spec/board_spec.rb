require "spec_helper"

describe TowersOfHanoi::Board do
  let(:board) { TowersOfHanoi::Board.new }

  it "defaults to 3 bricks" do
    expect(board.bricks).to eq 3
  end

  describe "#tower" do
    it "returns a tower" do
      expect(board.tower(2)).to be_a(TowersOfHanoi::Board::Tower)
    end

    it "returns nil with an invalid position" do
      expect(board.tower(4)).to be nil
      expect(board.tower(0)).to be nil
      expect(board.tower(-1)).to be nil
    end

    it "begins with a full tower in position 1" do
      expect(board.tower(1).full?).to be true
    end
  end
end
