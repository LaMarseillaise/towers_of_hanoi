require "spec_helper"

describe TowersOfHanoi::Controller do
  let(:controller) { TowersOfHanoi::Controller.new }
  let(:game) { TowersOfHanoi::Game.new(board: TowersOfHanoi::Board.new(bricks: 2)) }

  before do
    allow(controller).to receive(:puts)
    allow(controller).to receive(:print)
  end

  describe "#select_number_of_tiles" do
    it "plays a game with between one and ten tiles" do
      allow(controller).to receive(:gets).and_return("2")
      expect(controller.select_number_of_tiles).to eq 2
    end

    it "does not begin a game with less than 1 tile" do
      allow(controller).to receive(:gets).and_return("0")
      expect(controller.select_number_of_tiles).to be false
    end

    it "does not begin a game with an invalid tile input" do
      allow(controller).to receive(:gets).and_return("-a")
      expect(controller.select_number_of_tiles).to be false
    end
  end

  describe "#play" do
    before do
      allow(controller).to receive(:gets).and_return("1", "2", "1", "3", "2", "3")
    end

    it "plays the game" do
      controller.play(game)
      expect(game.over?).to be true
    end

    it "tracks the number of moves made" do
      expect{controller.play(game)}.to change(game, :turns).by 3
    end
  end
end
