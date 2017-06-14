class Board
  attr_reader :grid

  def initialize(grid_size = 10)
    @grid = Array.new(grid_size) { Array.new(grid_size) { 0 } }
  end

  def choose_coordinates(row, column)
    @grid[row][column] = 1
  end

end
