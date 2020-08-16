class Knight
  attr_accessor :moves, :column, :row, :location, :parent

  def initialize(location, parent = nil)
    @location = location
    @column = location[0]
    @row = location[1]
    @moves = find_moves
    @parent = parent
  end

  def find_moves(column = @column, row = @row)
    moves = [
      [column + 2, row + 1], [column + 2, row - 1],
      [column - 2, row + 1], [column - 2, row - 1],
      [column + 1, row + 2], [column + 1, row - 2],
      [column - 1, row + 2], [column - 1, row - 2]
    ]
    valid_moves = moves.select { |move| move[0].between?(0, 7) && move[1].between?(0, 7) }
    valid_moves
  end
end