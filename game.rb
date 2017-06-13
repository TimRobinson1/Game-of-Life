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

  def calculate_fate(row, cell)
    neighbours = [
      find_neighbour(row - 1, cell - 1),
      find_neighbour(row - 1, cell),
      find_neighbour(row - 1, cell + 1),

      find_neighbour(row, cell - 1),
      find_neighbour(row, cell + 1),

      find_neighbour(row + 1, cell - 1),
      find_neighbour(row + 1, cell),
      find_neighbour(row + 1, cell + 1)
    ]

    neighbours.count(1)
  end

  def find_neighbour(row, cell)
    return 0 unless @grid[row]
    @grid[row][cell]
  end

  def start
    @grid.each_with_index do |row, row_index|
      row.each_with_index do |cell, cell_index|
        p calculate_fate(row_index, cell_index)
      end
    end
  end
end
