require 'cell'

describe Cell do
  it { is_expected.to respond_to :active? }

  it 'starts as a dead cell' do
    expect(subject.active?).to eq false
  end

  describe '#activate' do
    it 'sets active status to true' do
      subject.activate
      expect(subject.active?).to eq true
    end
  end

  describe '#deactivate' do
    it 'sets active status to false' do
      subject.activate
      subject.deactivate
      expect(subject.active?).to eq false
    end
  end
end
