module TowersOfHanoi
  class Game
    attr_reader :moves, :board

    def initialize(bricks: 3, moves: [])
      @board = TowersOfHanoi::Board.new(bricks: bricks)
      @moves = moves

      @moves.each { |move| move.make(@board) }
    end

    def number_of_bricks
      @board.bricks
    end

    def turns
      @moves.length
    end

    def over?
      @board.tower(3).full?
    end

    def make_move(move)
      @moves << move if move.make(@board)
    end

    def minimum_turns
      2**number_of_bricks - 1
    end
  end
end
