class OCR
attr_accessor :broken_text 

  NUMBERS = {
    0 => [" _", "| |", "|_|" ],
    1 => ["", "  |", "  |"],
    2 => [" _", " _|", "|_"],
    3 => [" _", " _|", " _|" ], 
    4 => ["", "|_|", "  |"],
    5 => [" _", "|_", " _|"],
    6 => [" _", "|_", "|_|"],
    7 => [" _", "  |", "  |"],
    8 => [" _", "|_|", "|_|"],
    9 => [" _", "|_|", " _|"],

  }

  def initialize(text)
    @broken_text = text.split("\n")
    
  end

  def convert
    if    broken_text == NUMBERS[0]
      "0"
    elsif broken_text == NUMBERS[1]
      "1"
    elsif broken_text == NUMBERS[2]
      "2"
    elsif broken_text == NUMBERS[3]
      "3"
    elsif broken_text == NUMBERS[4]
      "4"
    elsif broken_text == NUMBERS[5]
      "5"
    elsif broken_text == NUMBERS[6]
      "6"
    elsif broken_text == NUMBERS[7]
      "7"
    elsif broken_text == NUMBERS[8]
      "8"
    elsif broken_text == NUMBERS[9]
      "9"
    end
end

end


OCR.new( text = <<-NUMBER.chomp
 _
| |
|_|

    NUMBER
).convert