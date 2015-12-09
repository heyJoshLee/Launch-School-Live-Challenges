

class Robot
  attr_accessor :bearing
  DIRECTIONS = [:north, :east, :south, :west]

  def orient(direction)
    @bearing = direction
  end


  def robot_bearing(direction)
    raise ArgumentError "Not a corret direction" unless directions.include? DIRECTIONS 
    orient(direction)
  end

  def turn_right
    @bearing =  case @bearing 
                when :north
                  :east
                when :east
                  :south
                when :south
                  :west
                when :west
                  :north
                end
  end

  def turn_left
    @bearing =  case @bearing
                when :north
                  :west
                when :east
                  :north
                when :south
                  :east
                when :west
                  :south
                end

    
  end

end


r = Robot.new
r.turn_right
