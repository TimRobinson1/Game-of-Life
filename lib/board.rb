require 'cell'

class Board
  attr_reader :grid

  def initialize(grid_size = 10)
    @grid = Array.new(grid_size) { Array.new(grid_size) { Cell.new } }
    @neighbours = []
  end

  def choose_coordinates(row, column)
    @grid[row][column].activate
  end

  def update
    record_neighbours
    update_grid
  end

  private

  def record_neighbours
    @grid.each_with_index do |row, row_index|
      row.each_with_index do |cell, cell_index|
        cell.neighbours = find_all_neighbours(row_index, cell_index)
      end
    end
  end

  def update_grid
    @grid.each do |row|
      row.each do |cell|
        if cell.active_neighbours == 3
          cell.activate
        elsif cell.active_neighbours != 2
          cell.deactivate
        else
          cell
        end
      end
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
    return Cell.new unless @grid[row] && @grid[row][cell]
    @grid[row][cell]
  end

end
