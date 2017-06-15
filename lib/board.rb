require_relative 'cell_scanner'

class Board
  attr_reader :grid

  def initialize(grid_size = 10)
    @grid = Array.new(grid_size) { Array.new(grid_size) { 0 } }
    @scanner = CellScanner.new
  end

  def choose_coordinates(row, column)
    @grid[row][column] = 1
  end

  def update
    live_neighbours_list = @scanner.record_all_cell_neighbours(@grid)
    update_grid(live_neighbours_list)
  end

  private

  def update_grid(live_neighbours_list)
    @grid.map do |row|
      row.map! { |cell| cell_assign(cell, live_neighbours_list.shift) }
    end
  end

  def cell_assign(cell, live_neighbours)
    return 1 if live_neighbours == 3
    return 0 if live_neighbours != 2
    cell
  end
end
