require_relative 'knight.rb'

class KnightTree
  def initialize(location)
    @root = Knight.new(location)
  end

  def breadth_first_search(end_location)
    queue = Queue.new
    queue << @root
    current_node = nil
    loop do
      current_node = queue.shift
      break if current_node.location == end_location
      for i in current_node.moves
        queue << Knight.new(i, current_node)
      end
    end
    path = []
    loop do
      path.unshift(current_node.location)
      break if current_node.parent.nil?
      current_node = current_node.parent
    end
    path
  end
end