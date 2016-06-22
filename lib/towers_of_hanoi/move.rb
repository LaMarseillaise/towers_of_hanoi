module TowersOfHanoi
  class Move
    attr_reader :origin, :destination

    def initialize(origin: nil, destination: nil)
      @origin = origin
      @destination = destination
    end

    def make(board)
      if valid?(board)
        board.tower(destination).add(board.tower(origin).remove)
      end
    end


    private

    def valid?(board)
      (1..3) === origin && (1..3) === destination &&
      board.tower(origin).top < board.tower(destination).top
    end
  end
end
