require "spec_helper"

describe TowersOfHanoi::View do
  let(:board){ TowersOfHanoi::Board.new }
  let(:view) { TowersOfHanoi::View.new }
  let(:move) { TowersOfHanoi::Move.new(origin: 1, destination: 2) }

  describe "#victory_message" do
    it "returns a success message" do
      expect(view.victory_message(turns: 3, min_turns: 7)).to eq(
        "Completed in 3 moves! (minimum: 7)"
      )
    end
  end

  describe "#board_template" do
    it "returns a representation of the state of the board" do
      move.make(board)
      expect(view.board_template(board)).to eq(
        "+-----------------+\n" +
        "|                 |\n" +
        "| ===             |\n" +
        "|=====   =        |\n" +
        "|  1     2     3  |\n" +
        "+-----------------+\n"
      )
    end
  end
end
