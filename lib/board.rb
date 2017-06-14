class Board
  attr_reader :grid

  def initialize(grid_size = 10)
    @grid = Array.new(grid_size) { Array.new(grid_size) { 0 } }
    @neighbours = []
  end

  def choose_coordinates(row, column)
    @grid[row][column] = 1
  end

  def tick
    record_neighbours
    update_grid
  end

  private

  def record_neighbours
    @grid.each_with_index do |row, row_index|
      row.each_with_index do |cell, cell_index|
        @neighbours << find_all_neighbours(row_index, cell_index)
      end
    end
  end

  def update_grid
    @grid.each_with_index do |row, row_index|
      row.each_with_index do |cell, cell_index|
        update_cell(@neighbours.shift, row_index, cell_index)
      end
    end
  end

  def update_cell(neighbours, row, cell)
    if neighbours.count(1) == 3
      @grid[row][cell] = 1
    elsif neighbours.count(1) != 2
      @grid[row][cell] = 0
    end
  end

  def find_all_neighbours(row, cell)
    [
      neighbour(row - 1, cell - 1),
      neighbour(row - 1, cell),
      neighbour(row - 1, cell + 1),

      neighbour(row, cell - 1),
      neighbour(row, cell + 1),

      neighbour(row + 1, cell - 1),
      neighbour(row + 1, cell),
      neighbour(row + 1, cell + 1)
    ]
  end

  def neighbour(row, cell)
    return 0 unless @grid[row]
    @grid[row][cell]
  end

end
