def make_tub_shape
  small_board.choose_coordinates(1, 2)
  small_board.choose_coordinates(2, 1)
  small_board.choose_coordinates(2, 3)
  small_board.choose_coordinates(3, 2)
end

def make_block_shape
  small_board.choose_coordinates(3, 1)
  small_board.choose_coordinates(3, 2)
  small_board.choose_coordinates(4, 1)
  small_board.choose_coordinates(4, 2)
end

def make_beehive_shape
  small_board.choose_coordinates(2, 2)
  small_board.choose_coordinates(2, 3)
  small_board.choose_coordinates(3, 1)
  small_board.choose_coordinates(3, 4)
  small_board.choose_coordinates(4, 2)
  small_board.choose_coordinates(4, 3)
end

def make_boat_shape
  small_board.choose_coordinates(1, 2)
  small_board.choose_coordinates(1, 1)
  small_board.choose_coordinates(2, 1)
  small_board.choose_coordinates(2, 3)
  small_board.choose_coordinates(3, 2)
end

def make_loaf_shape
  small_board.choose_coordinates(1, 2)
  small_board.choose_coordinates(1, 3)
  small_board.choose_coordinates(2, 1)
  small_board.choose_coordinates(2, 4)
  small_board.choose_coordinates(3, 2)
  small_board.choose_coordinates(3, 4)
  small_board.choose_coordinates(4, 3)
end
