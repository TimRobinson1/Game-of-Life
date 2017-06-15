require 'cell_scanner'

describe CellScanner do
  it { is_expected.to respond_to :record_all_cell_neighbours }

  it "records the quantity of each cell's live neighbours" do
    small_grid = [[1, 0, 1], [0, 0, 0], [1, 0, 0]]
    expect(subject.record_all_cell_neighbours(small_grid)).to eq [
      2, 3, 0, 3, 3, 1, 0, 1, 0
    ]
  end
end
