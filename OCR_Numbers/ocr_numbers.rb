require 'pry'

class OCR
  attr_accessor :text, :split_text, :lines, :seperate_numbers, :numbers_as_strings, :numbers

  NUMBERS = {
    0 => [" _", "| |", "|_|" ],
    1 => ["   ", "  |", "  |"],
    2 => [" _", " _|", "|_"],
    3 => [" _", " _|", " _|" ], 
    4 => ["   ", "|_|", "  |"],
    5 => [" _", "|_", " _|"],
    6 => [" _", "|_", "|_|"],
    7 => [" _", "  |", "  |"],
    8 => [" _", "|_|", "|_|"],
    9 => [" _", "|_|", " _|"]
  }

  def initialize(text)
    @text = text
    @numbers_as_strings = []
    @numbers = []
  end

  def break_into_lines
    @lines = text.split("\n")
    @lines.each
  end

  def lines_into_numbers
    @seperate_numbers = []
    lines.each do |line|
      line = "   " if line == "" # fixes empty first line error for '1'
      seperate_numbers << line.scan(/.{1,3}/)
    end

      @numbers = seperate_numbers.transpose
  end

  def check_all_numbers
    @numbers.each do |number|
      return_number_string(number)
    end
    numbers_as_strings.join
  end

  def convert
    break_into_lines
    lines_into_numbers
    check_all_numbers
  end

  def return_number_string(number_array)
    if    number_array == NUMBERS[0]
      numbers_as_strings << "0"
    elsif number_array == NUMBERS[1]
      numbers_as_strings << "1"
    elsif number_array == NUMBERS[2]
      numbers_as_strings << "2"
    elsif number_array == NUMBERS[3]
      numbers_as_strings << "3"
    elsif number_array == NUMBERS[4]
      numbers_as_strings << "4"
    elsif number_array == NUMBERS[5]
      numbers_as_strings << "5"
    elsif number_array == NUMBERS[6]
      numbers_as_strings<< "6"
    elsif number_array == NUMBERS[7]
      numbers_as_strings<< "7"
    elsif number_array == NUMBERS[8]
      numbers_as_strings << "8"
    elsif number_array == NUMBERS[9]
      numbers_as_strings << "9"
    else
      numbers_as_strings << "?"
    end
  end

end

ocr = OCR.new(text).convert
