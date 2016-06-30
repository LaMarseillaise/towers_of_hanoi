module TowersOfHanoi
  class Game
    attr_reader :board

    def initialize(bricks: 3, moves: [])
      @board = TowersOfHanoi::Board.new(bricks: bricks)
      @moves = []
      moves.each { |turn| move(from: turn[0], to: turn[1]) }
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

    def move(from: 0, to: 0)
      new_move = TowersOfHanoi::Move.new(origin: from, destination: to)
      @moves << new_move.make(@board)
    end

    def minimum_turns
      2**number_of_bricks - 1
    end
  end
end
