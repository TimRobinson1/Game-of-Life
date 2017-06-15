class CellScanner

  def record_all_cell_neighbours(grid)
    @grid = grid
    results = []
    @grid.each_with_index do |row, row_index|
      row.each_with_index do |cell, cell_index|
        results << all_neighbours(row_index, cell_index).count(1)
      end
    end
    results
  end

  private

  def all_neighbours(row, cell)
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
