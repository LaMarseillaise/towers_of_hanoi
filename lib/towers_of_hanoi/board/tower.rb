module TowersOfHanoi
  class Board
    class Tower
      def initialize(max_bricks: 3, bricks: 0)
        @max_bricks = max_bricks
        @bricks = Array.new(bricks).map.with_index do |el, idx|
          TowersOfHanoi::Board::Brick.new(width: max_bricks - idx)
        end
      end

      def height
        @bricks.length
      end

      def top
        brick(height) || TowersOfHanoi::Board::Base.new(width: @max_bricks + 1)
      end

      def full?
        height == @max_bricks
      end

      def brick(position)
        if (1..@max_bricks) === position
          @bricks[position - 1] || TowersOfHanoi::Board::Brick.new
        end
      end

      def add(new_brick)
        @bricks.push(new_brick)
      end

      def remove
        @bricks.pop
      end
    end
  end
end
