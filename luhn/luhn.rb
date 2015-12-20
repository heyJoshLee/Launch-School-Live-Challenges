require 'pry'

class Luhn

  def initialize number
    @number = number  
  end

  def addends
    array = []
    @number = @number.to_s
    @number.gsub!("_", "")
    @number = @number.split("")
    @number.map! {|e| e.to_i}
    count = 0
    @number.reverse!
    @number.map! do |num|
        count += 1
        if count % 2 == 0  
          if num * 2 > 9
            (num * 2) - 9
          else
            num * 2
          end  
        else 
          num
        end 
    end

    @number.reverse!
  end

  def checksum
    addends
    @number.inject(:+)
  end

  def valid?
    checksum % 10 == 0
  end

  def self.create(number)
    count = 0
    number = number.to_s
    valid_number = number << count.to_s
    valid_number.to_i
  end


end
