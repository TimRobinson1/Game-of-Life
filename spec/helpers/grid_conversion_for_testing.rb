def small_converted_grid_of_integers
  small_board.grid.map do |row|
    row.map do |cell|
      cell.active? ? 1 : 0
    end
  end
end
