class Series

  def initialize(num)
    @numbers = num.split("")
    @series = []
  end

  def slices array_size
    @numbers.map! {|num| num.to_i}
    raise ArgumentError if array_size > @numbers.length
    loop do
      new_array = @numbers[0, array_size]
      break if new_array.length != array_size
      @series << new_array
      @numbers.shift
      break if @numbers.size <= 0
    end

    @series
  end
end
