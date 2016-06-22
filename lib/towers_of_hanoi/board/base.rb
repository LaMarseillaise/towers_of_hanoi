require_relative "./brick"

module TowersOfHanoi
  class Board
    class Base < Brick
      def initialize(width: 3)
        @width = width
      end
    end
  end
end
