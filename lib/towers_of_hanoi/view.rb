module TowersOfHanoi
  class View
    BLANK  = ' '
    SIDE   = '|'
    TOP    = '-'
    CORNER = '+'
    TILE   = '='

    def introduction
      "Welcome to Towers of Hanoi!\n\n" +
      "The object of this simple game is to move all of the tiles\n" +
      "from the first tower (1) to the last tower (3).\n\n" +
      "You must move only one tile at a time, from one tower to another,\n" +
      "without placing a larger tile on top of a smaller tile.\n\n" +
      "Enter 'q' to exit at any time.\n\n"
    end

    def ask_for_number_of_tiles
      "How many tiles would you like in your tower?"
    end

    def too_many_tiles_message
      "Playing with more than 10 tiles is not recommended due to requiring over 1000 moves to complete.\n\n"
    end

    def invalid_input_message
      "Please enter a numeric value between 1 and 10.\n\n"
    end

    def ask_origin
      "Move from:"
    end

    def ask_destination
      "Move to:"
    end

    def victory_message(game)
      "Completed in #{game.turns} moves! (minimum: #{game.minimum_turns})"
    end

    def board_template(board)
      number_of_bricks = board.bricks

      CORNER + horizontal_border(number_of_bricks) + CORNER + "\n" +

      number_of_bricks.downto(1).map do |row|
        SIDE + brick_row(row, board) + SIDE + "\n"
      end.join +

      SIDE + column_labels(number_of_bricks) + SIDE + "\n" +
      CORNER + horizontal_border(number_of_bricks) + CORNER + "\n"
    end


    private

    def horizontal_border(number_of_bricks)
      TOP * (number_of_bricks * 6 - 1)
    end

    def column_labels(padding)
      (1..3).map do |column|
        BLANK * (padding - 1) +
        column.to_s +
        BLANK * (padding - 1)
      end.join(BLANK)
    end

    def brick_row(row, board)
      (1..3).to_a.map do |column|
        brick(board.tower(column).brick(row).width, board.bricks)
      end.join(BLANK)
    end

    def brick(width, number_of_bricks)
      brick_buffer(width, number_of_bricks) +
      (width > 0 ? TILE * (2 * width - 1) : BLANK) +
      brick_buffer(width, number_of_bricks)
    end

    def brick_buffer(brick_width, number_of_bricks)
      if brick_width > 0
        BLANK * (number_of_bricks - brick_width)
      else
        BLANK * (number_of_bricks - 1)
      end
    end
  end
end
