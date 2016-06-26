module TowersOfHanoi
  class Game
    attr_reader :moves, :board

    def initialize(board: TowersOfHanoi::Board.new(bricks: 3), moves: [])
      @board = board
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
