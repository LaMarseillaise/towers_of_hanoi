require "spec_helper"

describe TowersOfHanoi::Board::Brick do
  let(:brick2) { TowersOfHanoi::Board::Brick.new(width: 2) }
  let(:brick3) { TowersOfHanoi::Board::Brick.new(width: 3) }

  describe "#width" do
    it "returns the width of the brick" do
      expect(brick2.width).to eq 2
      expect(brick3.width).to eq 3
    end
  end

  describe "#<" do
    it "returns true when the given brick is larger" do
      expect(brick2 < brick3).to be true
    end

    it "returns false whenn the given brick is smaller" do
      expect(brick3 < brick2).to be false
    end
  end
end
