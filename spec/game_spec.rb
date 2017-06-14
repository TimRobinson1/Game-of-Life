require 'game'

describe Game do
  let(:game) { described_class.new }

  it { is_expected.to respond_to :grid }
  it { is_expected.to respond_to :choose_starting_square }

  describe '#choose_starting_square' do
    it 'updates selected square with given co-ordinates' do
      game.choose_starting_square(3, 1)
      expect(game.grid).to eq [
        [0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0],
        [0, 1, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0]
      ]
    end

    it 'can have multiple starting co-ordinates' do
      game.choose_starting_square(3, 1)
      game.choose_starting_square(5, 3)
      expect(game.grid).to eq [
        [0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0],
        [0, 1, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0],
        [0, 0, 0, 1, 0, 0]
      ]
    end
  end

  describe '#start' do
    it 'destroys a lone square' do
      game.choose_starting_square(3, 1)
      game.start
      expect(game.grid).to eq [
        [0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0]
      ]
    end
  end
end
