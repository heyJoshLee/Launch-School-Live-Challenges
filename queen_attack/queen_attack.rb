class Queens
  attr_accessor :black, :white, :board

  def initialize(positions={})
    @white = positions[:white] || [0,3]
    @black = positions[:black] || [7,3]

    raise ArgumentError, "Cannot be on the same space" if @white == @black
  end


  def board
    '_ _ _ _ _ _ _ _\n' +
    '_ _ _ _ _ _ _ _\n' +
    '_ _ _ _ _ _ _ _\n' +
    '_ _ _ _ _ _ _ _\n' +
    '_ _ _ _ _ _ _ _\n' +
    '_ _ _ _ _ _ _ _\n' +
    '_ _ _ _ _ _ _ _\n' +
    '_ _ _ _ _ _ _ _\n'
  end

end



q = Queens.new

q.board[0] = "B"

puts q.board