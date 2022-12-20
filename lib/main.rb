require_relative 'knight'
require_relative 'board'

game = Board.new
game.knight_moves([0,4], [3,0])