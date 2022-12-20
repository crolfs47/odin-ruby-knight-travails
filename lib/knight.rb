# require_relative 'board'

class Knight
  MOVES = [1, 2], [-1, 2], [1, -2], [-1, -2], [2, 1], [-2, 1], [2, -1], [-2, -1]
  attr_accessor :parent, :children, :position

  def initialize(position, parent = nil)
    @position = position
    @parent = parent
    @children = []
  end

  def possible_moves(position)
    potential_moves = []
    MOVES.each do |move|
      x = position[0] + move[0]
      y = position[1] + move[1]
      potential_moves.push([x, y]) if x.between?(0, 7) && y.between?(0, 7)
    end
    potential_moves
  end
end


