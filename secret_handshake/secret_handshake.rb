class SecretHandshake
  attr_accessor :binary_num, :nums, :commands

  def initialize num
    if num.class.name == "Fixnum"
      @binary_num = num.to_s 2
      @commands = []
      convert_to_commands
    else
      @commands = []

    end
         

  end

  def convert_to_commands
    if @binary_num[-1] == "1"
      @commands << "wink"
    end

    if @binary_num[-2] == "1"
      @commands << "double blink"
    end

    if @binary_num[-3] == "1"
      @commands << "close your eyes"
    end

    if @binary_num[-4] == "1"
      @commands << "jump"
    end

    if @binary_num[-5] == "1"
      @commands.reverse!
    end
    
  end

end

shs = SecretHandshake.new(1)
shs.convert_to_commands
p shs.commands