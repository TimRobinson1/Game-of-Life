require 'cell'

describe Cell do
  it { is_expected.to respond_to :alive? }

  it 'starts as a dead cell' do
    expect(subject.alive?).to eq false
  end
end
