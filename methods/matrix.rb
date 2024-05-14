class Matrix
  attr_accessor :x, :y
  
  def initialize(x, y)
    @x = x
    @y = y
  end

  def +(other)
    Matrix.new((x + other.x), (y + other.y))
  end

  def to_s
    "(#{x}, #{y})"
  end
end

mat1 = Matrix.new(1, 2)
mat2 = Matrix.new(2, 3)
puts mat1 + mat2 # (3, 5)