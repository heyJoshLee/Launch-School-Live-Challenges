class Octal
  attr_accessor :number, :decimal_numbers

  def initialize number
    @number = number
  end

  def to_decimal
    @decimal_numbers = []
    count = -1
    exp = 0
    
    if @number.match(/\D/) || greater_than_8(@number)
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

  def greater_than_8(number)
    nums = number.split ""
    nums.any? { |n| n.to_i >= 8 }
  end

end