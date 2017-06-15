require_relative 'board'

# Responsible for game interactions
class Game
  attr_reader :board

  def initialize(play_area_size = 10)
    @board = Board.new(play_area_size)
  end

  def grid
    @board.grid
  end

  def choose_starting_square(row, column)
    @board.choose_coordinates(row, column)
  end

  def tick
    @board.update
  end
end
