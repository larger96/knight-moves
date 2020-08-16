require_relative 'knight_tree.rb'
require_relative 'square.rb'

class Gameboard
  def initialize
    for column in 0..7
      for row in 0..7
        Square.new(column, row)
      end
    end
  end

  def knight_moves(start_location, end_location)
    knight_travels = KnightTree.new(start_location)
    route = knight_travels.breadth_first_search(end_location)
    puts "You made it in #{route.length - 1} moves! Here's your path:"
    for i in route
      print "#{i}\n"
    end
  end
end

x = Gameboard.new
x.knight_moves([3, 3], [4, 3])
# => You made it in 3 moves! Here's your path:
#    [3, 3]
#    [5, 4]
#    [3, 5]
#    [4, 3]