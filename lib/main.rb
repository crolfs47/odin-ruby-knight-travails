require_relative 'knight'
require_relative 'board'

game = Board.new
game.knight_moves([0,0], [6,2])