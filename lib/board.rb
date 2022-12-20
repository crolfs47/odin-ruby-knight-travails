require_relative 'knight'

class Board
  def initialize; end

  def knight_moves(start, finish)
    current = make_tree(start, finish)
    path = find_path(current, start)
    print_result(path)
  end

  def make_tree(start, finish)
    queue = [Knight.new(start)]
    current = queue.shift
    until current.position == finish
      current.possible_moves(current.position).each do |move|
        child = Knight.new(move, current)
        current.children << child
        queue << child
      end
      current = queue.shift
    end
    current
  end

  def find_path(current, start)
    path = []
    until current.position == start
      path.unshift(current.position)
      current = current.parent
    end
    path.unshift(start)
    path
  end

  def print_result(path)
    puts "You made it in #{path.length - 1} moves! Here's your path:"
    path.each { |move| p move }
  end
end
