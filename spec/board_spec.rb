require 'board'

describe Board do
  let(:board) { described_class.new(15) }
  let(:small_board) { described_class.new(6)}

  it { is_expected.to respond_to :grid }

  it 'has a default grid size' do
    expect(subject.grid.length).to eq 10
  end

  it 'has a settable grid size' do
    expect(board.grid.length).to eq 15
  end

  describe '#choose_coordinates' do
    it 'affects the selected cell in the grid' do
      board.choose_coordinates(4, 1)
      expect(board.grid[4][1]).to eq 1
    end
  end

  describe '#tick' do
    it 'advances game by one tick and destroys lone cells' do
      board.choose_coordinates(4, 1)
      board.tick
      expect(board.grid[4][1]).to eq 0
    end

    it 'creates new cells appropriately' do
      board.choose_coordinates(3, 1)
      board.choose_coordinates(3, 2)
      board.choose_coordinates(3, 3)
      board.tick
      # p board.grid
      expect(board.grid[2][2]).to eq 1
    end
  end

  describe 'static shapes' do
    it 'block shape remains static' do
      small_board.choose_coordinates(3, 1)
      small_board.choose_coordinates(3, 2)
      small_board.choose_coordinates(4, 1)
      small_board.choose_coordinates(4, 2)
      small_board.tick
      expect(small_board.grid).to eq [
        [0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0],
        [0, 1, 1, 0, 0, 0],
        [0, 1, 1, 0, 0, 0],
        [0, 0, 0, 0, 0, 0]
      ]
    end

    it 'beehive shape remains static' do
      small_board.choose_coordinates(2, 2)
      small_board.choose_coordinates(2, 3)
      small_board.choose_coordinates(3, 1)
      small_board.choose_coordinates(3, 4)
      small_board.choose_coordinates(4, 2)
      small_board.choose_coordinates(4, 3)
      small_board.tick
      expect(small_board.grid).to eq [
        [0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0],
        [0, 0, 1, 1, 0, 0],
        [0, 1, 0, 0, 1, 0],
        [0, 0, 1, 1, 0, 0],
        [0, 0, 0, 0, 0, 0]
      ]
    end

    it 'loaf shape remains static' do
      small_board.choose_coordinates(1, 2)
      small_board.choose_coordinates(1, 3)
      small_board.choose_coordinates(2, 1)
      small_board.choose_coordinates(2, 4)
      small_board.choose_coordinates(3, 2)
      small_board.choose_coordinates(3, 4)
      small_board.choose_coordinates(4, 3)
      small_board.tick
      expect(small_board.grid).to eq [
        [0, 0, 0, 0, 0, 0],
        [0, 0, 1, 1, 0, 0],
        [0, 1, 0, 0, 1, 0],
        [0, 0, 1, 0, 1, 0],
        [0, 0, 0, 1, 0, 0],
        [0, 0, 0, 0, 0, 0]
      ]
    end

    it 'tub shape remains static' do
      small_board.choose_coordinates(1, 2)
      small_board.choose_coordinates(2, 1)
      small_board.choose_coordinates(2, 3)
      small_board.choose_coordinates(3, 2)
      small_board.tick
      expect(small_board.grid).to eq [
        [0, 0, 0, 0, 0, 0],
        [0, 0, 1, 0, 0, 0],
        [0, 1, 0, 1, 0, 0],
        [0, 0, 1, 0, 0, 0],
        [0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0]
      ]
    end

    it 'boat shape remains static' do
      small_board.choose_coordinates(1, 2)
      small_board.choose_coordinates(1, 1)
      small_board.choose_coordinates(2, 1)
      small_board.choose_coordinates(2, 3)
      small_board.choose_coordinates(3, 2)
      small_board.tick
      expect(small_board.grid).to eq [
        [0, 0, 0, 0, 0, 0],
        [0, 1, 1, 0, 0, 0],
        [0, 1, 0, 1, 0, 0],
        [0, 0, 1, 0, 0, 0],
        [0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0]
      ]
    end
  end
end
