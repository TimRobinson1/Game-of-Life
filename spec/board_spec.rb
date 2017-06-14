require 'board'

describe Board do
  let(:board) { described_class.new(15) }

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
end
