module TowersOfHanoi
  class Controller
    def initialize
      @view = TowersOfHanoi::View.new
    end

    def run
      puts @view.introduction
      loop do
        if tiles = select_number_of_tiles
          game = TowersOfHanoi::Game.new(bricks: tiles)
          puts @view.board_template(game.board)
          play(game)
          puts @view.victory_message(game)
        else
          puts @view.invalid_input_message
        end
      end
    end

    def select_number_of_tiles
      number = get_input(@view.ask_for_number_of_tiles).to_i
      (1..10) === number && number
    end

    def play(game)
      until game.over? do
        game.move(
          from: get_input(@view.ask_origin).to_i,
          to:   get_input(@view.ask_destination).to_i
        )
        puts @view.board_template(game.board)
      end
    end


    private

    def get_input(label = nil)
      puts label if label
      print '> '
      input = gets.chomp
      exit if input.start_with?('q') || input == "exit"
      input
    end
  end
end
