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

  def start
    @grid.each_with_index do |row, row_index|
      row.each_with_index do |cell, cell_index|
        update_cell(row_index, cell_index)
      end
    end
  end

  private

  def update_cell(row, cell)
    neighbours = find_all_neighbours(row, cell)
    if neighbours.count(1).between?(2, 3)
      create_cell(row, cell)
    else
      destroy_cell(row, cell)
    end
  end

  def destroy_cell(row, cell)
    @grid[row][cell] = 0
  end

  def create_cell(row, cell)
    @grid[row][cell] = 1
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
