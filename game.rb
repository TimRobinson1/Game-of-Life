# Game logic
class Game
  attr_reader :grid

  def initialize
    @grid = [
      [0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0]
    ]
  end

  def choose_starting_square(row, column)
    @grid[row][column] = 1
  end

  def update_cell(row, cell)
    neighbours = find_all_neighbours(row, cell)


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

  def start
    @grid.each_with_index do |row, row_index|
      row.each_with_index do |cell, cell_index|
        p update_cell(row_index, cell_index)
      end
    end
  end
end
