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
end
