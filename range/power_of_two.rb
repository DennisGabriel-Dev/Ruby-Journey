# In this example the succ method and <=> method are responsible for order the range
# the <=> method compare the values, and the succ points for the next value
class PowerOfTwo
  attr_reader :value
  def initialize(value)
    @value = value
  end
  
  def <=>(other)
      @value <=> other.value
  end
  
  def succ
    PowerOfTwo.new(@value + value)
  end
  
  def to_s
    @value.to_s
  end
end

p1 = PowerOfTwo.new(4)
p2 = PowerOfTwo.new(32)

puts (p1..p2).to_a
=begin
  output: 
    4
    8
    16
    32
=end