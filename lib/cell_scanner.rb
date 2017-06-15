class CellScanner
  def record_all_cell_neighbours(grid)
    @grid = grid.dup
    grid.flat_map.with_index do |row, row_i|
      row.map.with_index { |cell, cell_i| scan_area(row_i, cell_i).count(1) }
    end
  end

  private

  def scan_area(row, cell)
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
