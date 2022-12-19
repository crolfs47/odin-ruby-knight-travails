  require_relative 'knight'
  
  class Board
    def initialize
    end

    def knight_moves(start, finish)
      if start == finish
    end
    
  
  end

  # accepts a block and traverses the tree in breadth-level order
# and yields each node to the provided block, return an array
# of values if no block is given
def level_order(&block)
  return root if root.nil?

  queue = []
  array = []
  queue.push(root)
  while queue.length >= 1
    visit_node = queue.shift
    block.call(visit_node) if block_given?

    array.push(visit_node.data)
    queue.push(visit_node.left_child) unless visit_node.left_child.nil?
    queue.push(visit_node.right_child) unless visit_node.right_child.nil?
  end
  array unless block_given?
end