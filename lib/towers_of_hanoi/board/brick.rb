module TowersOfHanoi
  class Board
    class Brick
      attr_reader :width

      def initialize(width: 0)
        @width = width
      end

      def <(brick)
        width < brick.width
      end
    end
  end
end
