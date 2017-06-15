require_relative 'cell_scanner'

class Board
  attr_reader :grid

  def initialize(grid_size = 10)
    @grid = Array.new(grid_size) { Array.new(grid_size) { 0 } }
    @neighbours = []
    @scanner = CellScanner.new
  end

  def choose_coordinates(row, column)
    @grid[row][column] = 1
  end

  def update
    scanned_grid = @scanner.record_all_cell_neighbours(@grid)
    update_grid(scanned_grid)
  end

  private

  def update_grid(relations)
    @grid.map do |row|
      row.map! do |cell|
        n = relations.shift
        if n == 3
          1
        elsif n != 2
          0
        else
          cell
        end
      end
    end
  end

end
