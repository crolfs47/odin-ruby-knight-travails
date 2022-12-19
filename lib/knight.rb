# require_relative 'board'

class Knight
  MOVES = [1, 2], [-1, 2], [1, -2], [-1, -2], [2, 1], [-2, 1], [2, -1], [-2, -1]

  def initialize(position)
    @position = position
    @children = []
    p possible_moves(position)
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

Knight.new([0,0])
