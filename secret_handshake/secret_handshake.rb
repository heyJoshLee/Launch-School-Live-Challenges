class SecretHandshake
  attr_accessor :binary_num, :nums, :commands
  COMMAND_KEY = ["wink", "double blink", "close your eyes", "jump"]

  def initialize num
    @commands = []
    if num.class == Fixnum
      @binary_num = num.to_s 2
      convert_to_commands
    end
  end

  private

  def convert_to_commands
      @commands << COMMAND_KEY[0] if @binary_num[-1] == "1"
      @commands << COMMAND_KEY[1] if @binary_num[-2] == "1"
      @commands << COMMAND_KEY[2] if @binary_num[-3] == "1"
      @commands << COMMAND_KEY[3] if @binary_num[-4] == "1"
      @commands.reverse!          if @binary_num[-5] == "1"
  end

end
