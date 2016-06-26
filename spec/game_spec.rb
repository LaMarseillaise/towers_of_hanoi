require "spec_helper"

describe TowersOfHanoi::Game do
  let(:move) { TowersOfHanoi::Move.new(origin: 1, destination: 3) }
  let(:board){ TowersOfHanoi::Board.new(bricks: 1) }
  let(:game) { TowersOfHanoi::Game.new(board: board) }
  let(:endgame){ TowersOfHanoi::Game.new(board: board, moves: [move]) }

  describe "#over?" do
    it "begins false" do
      expect(game.over?).to be false
    end

    it "is true when all tiles are on the last tower" do
      expect(endgame.over?).to be true
    end
  end

  describe "#make_move" do
    it "adds the move to the list of moves" do
      expect{game.make_move(move)}.to change(game.moves, :length).by 1
    end

    it "changes the state of the board" do
      game.make_move(move)
      expect(game.board.tower(3).full?).to be true
      expect(game.board.tower(1).full?).to be false
    end
  end

  describe "#minimum_turns" do
    it "returns one less than 2 to the power of the number of bricks" do
      expect(game.minimum_turns).to eq(1)
    end
  end
end
