module TowersOfHanoi
  class Board
    attr_reader :bricks

    def initialize(bricks: 3)
      @bricks = bricks
      @towers = [
        TowersOfHanoi::Board::Tower.new(max_bricks: @bricks, bricks: @bricks),
        TowersOfHanoi::Board::Tower.new(max_bricks: @bricks),
        TowersOfHanoi::Board::Tower.new(max_bricks: @bricks)
      ]
    end

    def tower(position)
      @towers[position - 1] if (1..3) === position
    end
  end
end
