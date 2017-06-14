# require 'game'
#
# describe Game do
#   let(:small_game) { described_class.new(6) }
#
#   it { is_expected.to respond_to :board }
#   it { is_expected.to respond_to :choose_starting_square }
#
#   it 'creates a new grid with specified size' do
#     huge_board = Game.new(100)
#     expect(huge_board.grid.length).to eq 100
#   end
#
#   describe '#grid' do
#     it 'returns current board' do
#       expect(small_game.grid).to eq [
#         [0, 0, 0, 0, 0, 0],
#         [0, 0, 0, 0, 0, 0],
#         [0, 0, 0, 0, 0, 0],
#         [0, 0, 0, 0, 0, 0],
#         [0, 0, 0, 0, 0, 0],
#         [0, 0, 0, 0, 0, 0]
#       ]
#     end
#   end
#
#   describe '#choose_starting_square' do
#     it 'updates selected square with given co-ordinates' do
#       small_game.choose_starting_square(3, 1)
#       expect(small_game.grid).to eq [
#         [0, 0, 0, 0, 0, 0],
#         [0, 0, 0, 0, 0, 0],
#         [0, 0, 0, 0, 0, 0],
#         [0, 1, 0, 0, 0, 0],
#         [0, 0, 0, 0, 0, 0],
#         [0, 0, 0, 0, 0, 0]
#       ]
#     end
#
#     it 'can have multiple starting co-ordinates' do
#       small_game.choose_starting_square(3, 1)
#       small_game.choose_starting_square(5, 3)
#       expect(small_game.grid).to eq [
#         [0, 0, 0, 0, 0, 0],
#         [0, 0, 0, 0, 0, 0],
#         [0, 0, 0, 0, 0, 0],
#         [0, 1, 0, 0, 0, 0],
#         [0, 0, 0, 0, 0, 0],
#         [0, 0, 0, 1, 0, 0]
#       ]
#     end
#   end
#
#   describe '#start' do
#     it 'destroys a lone square' do
#       small_game.choose_starting_square(3, 1)
#       small_game.tick
#       expect(small_game.grid).to eq [
#         [0, 0, 0, 0, 0, 0],
#         [0, 0, 0, 0, 0, 0],
#         [0, 0, 0, 0, 0, 0],
#         [0, 0, 0, 0, 0, 0],
#         [0, 0, 0, 0, 0, 0],
#         [0, 0, 0, 0, 0, 0]
#       ]
#     end
#   end
# end
