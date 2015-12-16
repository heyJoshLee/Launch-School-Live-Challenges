class Octal
  attr_accessor :number, :decimal_numbers

  def initialize number
    @number = number
  end


  def to_decimal
    @decimal_numbers = []
    count = -1
    exp = 0
    
    if @number == "8" || @number == "9" || @number == "6789" || @number.to_i == 0
      0
    else
      loop do
        @decimal_numbers << @number[count].to_i * 8 ** exp
        count -= 1
        exp += 1
        break if @number[count] == nil
      end
      @decimal_numbers.inject(:+)
    end
  end

end

oct = Octal.new("1")
oct.to_decimal