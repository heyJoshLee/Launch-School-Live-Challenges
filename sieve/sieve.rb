class Sieve
  
  def initialize(n)
    @primes = []
    @numbers = (2..n).each.to_a
  end

  def primes
    loop do
      @primes << @numbers.shift
      @numbers.delete_if {|n| n % @primes.last == 0}
      break if @numbers.size <= 0
    end
    return @primes
  end
end
