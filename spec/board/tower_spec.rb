require "spec_helper"

describe TowersOfHanoi::Board::Tower do
  let(:tower)      { TowersOfHanoi::Board::Tower.new(bricks: 2) }
  let(:empty_tower){ TowersOfHanoi::Board::Tower.new(bricks: 0) }
  let(:full_tower) { TowersOfHanoi::Board::Tower.new(bricks: 3) }
  let(:brick) { TowersOfHanoi::Board::Brick.new(width: 1)}

  describe "#height" do
    it "returns the number of bricks in a tower" do
      expect(tower.height).to eq 2
    end
  end

  describe "#top" do
    it "returns the top brick" do
      expect(tower.top.width).to eq 2
    end

    it "returns the base brick if there are no bricks in the tower" do
      expect(empty_tower.top.width).to be > 3
    end
  end

  describe "#brick" do
    it "returns a brick" do
      expect(tower.brick(1)).to be_a TowersOfHanoi::Board::Brick
    end

    it "returns a null brick when there is no brick" do
      expect(tower.brick(3).width).to eq 0
    end

    it "returns nil for invalid brick positions" do
      expect(tower.brick(0)).to be nil
      expect(tower.brick(-1)).to be nil
      expect(tower.brick(4)).to be nil
    end
  end

  describe "#add" do
    it "adds a brick to the top of the tower" do
      tower.add(brick)
      expect(tower.top.width).to eq 1
    end
  end

  describe "#remove" do
    it "removes a brick from the top of the tower" do
      tower.remove
      expect(tower.top.width).to eq 3
    end

    it "returns the brick removed from the tower" do
      expect(tower.remove.width).to eq 2
    end
  end

  describe "#full?" do
    it "is not full when the tower does not have the max bricks" do
      expect(tower.full?).to be false
    end

    it "is full when the tower has the max bricks" do
      expect(full_tower.full?).to be true
    end
  end
end
